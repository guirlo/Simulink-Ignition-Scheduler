# Four-Cylinder Engine Ignition Control Simulation

[![View Four-Cylinder Engine Ignition Control Simulation on File Exchange](https://www.mathworks.com/matlabcentral/images/matlab-file-exchange.svg)](https://www.mathworks.com/matlabcentral/fileexchange/69271-four-cylinder-engine-ignition-control-simulation)

[![Open in MATLAB Online](https://www.mathworks.com/images/responsive/global/open-in-matlab-online.svg)](https://matlab.mathworks.com/open/github/v1?repo=guirlo/Simulink-Ignition-Scheduler&project=IgnitionScheduler.prj)


[View Four-Cylinder Engine Ignition Control Simulation on File Exchange](https://www.mathworks.com/matlabcentral/images/matlab-file-exchange.svg)

Learn more on [Guy on Simulink](https://blogs.mathworks.com/simulink/):

https://blogs.mathworks.com/simulink/2018/11/07/internal-combustion-engine-ignition-control-example-part-1
https://blogs.mathworks.com/simulink/2018/12/13/internal-combustion-engine-ignition-controller-example-part-2

This example simulates the ignition control of a four-cylinder engine. It has been developed as a collaboration between Guy Rouleau from MathWorks and Isaac Hisahiro Ito at Toyota Motor North America R&D. The model is intended for demonstration and educational purpose.

The model implements the following feature:
- Simscape language for modeling a four-cylinder engine ignition process
- Symbolic Math Toolbox for designing the engine model equations
- Simscape Driveline for modeling of the vehicle drivetrain
- Export-function model for the controller, allowing the code generated from it to be integrated with an external environment and scheduler
- Stateflow for simulating the Engine Control Unit scheduler
- SimEvents for simulation of hardware timers
