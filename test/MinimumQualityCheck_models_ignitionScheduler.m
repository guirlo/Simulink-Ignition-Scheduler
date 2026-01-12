classdef MinimumQualityCheck_models_ignitionScheduler < matlab.unittest.TestCase
  methods (TestMethodSetup)
    function myTestMethodSetup(testcase)
      close all
      bdclose all
      addTeardown(testcase, @my_teardown)
      function my_teardown()
        close all
        bdclose all
      end  % nested function
    end  % function
  end  % methods
  methods (Test)
    %% Minimum quality check (MQC)
    % Check that scripts, functions, classes, and models run right out of the box.
    function MQC_1(~)
      evalin("base", "initCtrl")
      evalin("base", "initPlant")
      load_system("ignitionScheduler")
      sim("ignitionScheduler")
    end  % function
  end  % methods
end  % classdef
