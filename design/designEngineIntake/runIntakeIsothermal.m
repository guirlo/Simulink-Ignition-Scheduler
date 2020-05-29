%% Study the Intake component behavior --- Run Simulations
%
% Run this script before figIntakeIsothermal.m.
%
% Compute the intake manifold pressure Pim for various throttle angles and
% engine speeds.  Pim must go as low as around 20kPa when the throttle angle is
% small and the engine speed is high.  If the throttle is wide open and the
% engine speed is low, Pim should be only slightly less than the ambient pressure.
%
% The system is supposed to reach steady state within a second.  If Pim at t=2
% and t=3 have a discrepancy greater than 0.1kPa, something is wrong.
%
dbstop if error
tic

savefilename = 'resultsIntakeIsothermal.mat';

mdl = 'batchTestIntakeIsothermal';
load_system(mdl)

%% Define test space: throttle x engine speed

% Throttle angles
values_thr_deg = [ 0 5 10 45 90 ];
N_thr = numel(values_thr_deg);
label_thr = arrayfun(@(x) num2str(x), values_thr_deg, 'UniformOutput',false);

% Engine speeds
values_eng_rpm = [ 700 1200 2400 3600 4800 6000 7000 ];
N_eng = numel(values_eng_rpm);
label_eng = arrayfun(@(x) num2str(x), values_eng_rpm, 'UniformOutput',false);

N_all = N_thr*N_eng;

fprintf('N_thr = %d\n', N_thr)
fprintf('N_eng = %d\n', N_eng)
fprintf('Total %d simulations\n', N_all)

%% Configure Simulink solver
% See "Model Parameters" in Simulink Documentation for the full list of model
% parameters:
%   web(fullfile(docroot, 'simulink/slref/model-parameters.html'))
clear config

config.TimeOut = 10;
config.CaptureErrors = 'on';
% config.FastRestart = 'on';
config.SimulationMode = 'accelerator';  % 'normal', 'accelerator', 'rapid'
config.Solver = 'ode23t';
config.StartTime = '0.0';
config.StopTime = '3.0';

% Just record two time points.  The system is supposed to reach steady state
% within a second.  If mainfold pressures at t=2 and t=3 have a discrepancy
% more than 1kPa, something is wrong.
config.OutputOption = 'SpecifiedOutputTimes';
config.OutputTimes = '[2 3]';

% SaveOutput is valid only if the model has top level output ports.
config.SaveOutput = 'on';
config.OutputSaveName = 'outports';

% I do not even attempt to use the signal logging mechanism programatically
% as it is quite finicky, i.e., I don't have a good understanding about how to
% use it properly... It is very hard to log the signal coming out of Simscape's
% "PS-S Converter Block".
config.SignalLogging = 'off';

config.SimscapeLogType = 'none';
%config.SimscapeLogName = 'loggedSimscapeSignals';
%config.SimscapeLogLimitData = 'off';

%% Run simulations
% This could use parfor.

data_pim_kPa = zeros(N_thr, N_eng);
data_S_thr_cm2 = zeros(N_thr, N_eng);
data_flowMode = zeros(N_thr, N_eng);
for ii_thr = 1 : N_thr
  for jj_eng = 1 : N_eng
    fprintf('%d, %d\n', ii_thr, jj_eng)
    set_param([mdl '/Throttle Angle (deg)'], 'Value',num2str(values_thr_deg(ii_thr)));
    set_param([mdl '/Engine Speed (rpm)'], 'Value',num2str(values_eng_rpm(jj_eng)));

    simout = sim(mdl, config);
    Pim_kPa = simout.outports{1}.Values.Data;
    S_thr_cm2 = simout.outports{2}.Values.Data;
    flowMode = simout.outports{3}.Values.Data;

    dP_kPa = Pim_kPa(end) - Pim_kPa(end-1);
    if dP_kPa > 0.1
      warning('Not in steady state')
      data_pim_kPa(ii_thr, jj_eng) = NaN;
      data_S_thr_cm2(ii_thr, jj_eng) = NaN;
      data_flowMode(ii_thr, jj_eng) = NaN;
    else
      data_pim_kPa(ii_thr, jj_eng) = Pim_kPa(end);
      data_S_thr_cm2(ii_thr, jj_eng) = S_thr_cm2(end);
      data_flowMode(ii_thr, jj_eng) = flowMode(end);
    end
  end
end

%% Save results
result.params.throttle.D_thr_cm = paramfcn_intake_D_thr_cm();
result.params.throttle.S_leak_cm2 = paramfcn_intake_S_leak_cm2();
result.data_pim_kPa = data_pim_kPa;
result.data_S_thr_cm2 = data_S_thr_cm2;
result.data_flowMode = data_flowMode;
result.label_thr = label_thr;
result.label_eng = label_eng;

save(savefilename, 'result')
toc
