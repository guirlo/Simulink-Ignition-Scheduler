% -------------------------------------------------------------------
%  Generated by MATLAB on 30-Apr-2018 13:56:44
%  MATLAB version: 9.4.0.813654 (R2018a)
% -------------------------------------------------------------------
% Copyright 2018 The MathWorks, Inc.                                  

DOWN_TABLE = ...
  [0 5 20 35;
   0 5 20 35;
   0 5 25 40;
   0 5 30 50;
   0 30 50 80;
   0 30 50 80];

DOWN_TH_BP = [0; 0.05; 0.4; 0.5; 0.9; 1];

TWAIT = 2;

UP_TABLE = ...
  [10 30 50 1.0E+6;
   10 30 50 1.0E+6;
   15 30 50 1.0E+6;
   23 41 60 1.0E+6;
   30 50 100 1.0E+6;
   40 70 100 1.0E+6];

UP_TH_BP = [0; 0.25; 0.35; 0.5; 0.9; 1];

clutchRise = 0.1;

eff_tor_rad = 0.4;

engagement_area = 0.0025;

fric_coeff = 0.5;

num_fric_surf = 6;

p0 = 2.0E+6;

peak_normal = 0.55;

pressThresh = 0.05;

velTol = 0.001;


% Bus object: opCmdBus 
clear elems;
elems(1) = Simulink.BusElement;
elems(1).Name = 'IgnitionKey';
elems(1).Dimensions = 1;
elems(1).DimensionsMode = 'Fixed';
elems(1).DataType = 'boolean';
elems(1).SampleTime = -1;
elems(1).Complexity = 'real';
elems(1).Min = [];
elems(1).Max = [];
elems(1).DocUnits = '';
elems(1).Description = '';

elems(2) = Simulink.BusElement;
elems(2).Name = 'EngageTransmission';
elems(2).Dimensions = 1;
elems(2).DimensionsMode = 'Fixed';
elems(2).DataType = 'boolean';
elems(2).SampleTime = -1;
elems(2).Complexity = 'real';
elems(2).Min = [];
elems(2).Max = [];
elems(2).DocUnits = '';
elems(2).Description = '';

elems(3) = Simulink.BusElement;
elems(3).Name = 'Throttle';
elems(3).Dimensions = 1;
elems(3).DimensionsMode = 'Fixed';
elems(3).DataType = 'double';
elems(3).SampleTime = -1;
elems(3).Complexity = 'real';
elems(3).Min = [];
elems(3).Max = [];
elems(3).DocUnits = '';
elems(3).Description = '';

opCmdBus = Simulink.Bus;
opCmdBus.HeaderFile = '';
opCmdBus.Description = '';
opCmdBus.DataScope = 'Auto';
opCmdBus.Alignment = -1;
opCmdBus.Elements = elems;
clear elems;
assignin('base','opCmdBus', opCmdBus);