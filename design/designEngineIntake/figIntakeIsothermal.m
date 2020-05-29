%% Study the Intake component behavior --- Make Figures
%
% Run this script after runIntakeIsothermal.m.
%

load('resultsIntakeIsothermal.mat')  % creates a workspace variable "result"

%%

D = result.params.throttle.D_thr_cm;
S = result.params.throttle.S_leak_cm2;
fprintf('D_thr_cm = %f\n', D)
fprintf('S_leak_cm2 = %f\n', S)

%%
figure
h = heatmap(result.data_pim_kPa);
h.Title = 'Intake manifold pressure, Pim (kPa)';
h.XLabel = 'Engine speed (RPM)';
h.XDisplayLabels = result.label_eng;
h.YLabel = 'Throttle angle (deg)';
h.YDisplayLabels = result.label_thr;

%%
figure
h = heatmap(result.data_flowMode);
h.Title = 'Flow mode: 1=laminar, 2=subsonic, 3=choked';
h.XLabel = 'Engine speed (RPM)';
h.XDisplayLabels = result.label_eng;
h.YLabel = 'Throttle angle (deg)';
h.YDisplayLabels = result.label_thr;

%%
% Check that the throttle open area is properly computed in Simscape.
% Sometimes I still make a mistake in trig calculation in Simscape source...

figure
h = heatmap(result.data_S_thr_cm2);
h.Title = 'Throttle open area (cm^2)';
h.XLabel = 'Engine speed (RPM)';
h.XDisplayLabels = result.label_eng;
h.YLabel = 'Throttle angle (deg)';
h.YDisplayLabels = result.label_thr;
