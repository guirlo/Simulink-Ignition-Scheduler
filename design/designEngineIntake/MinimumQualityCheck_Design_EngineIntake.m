classdef MinimumQualityCheck_Design_EngineIntake < matlab.unittest.TestCase
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
      design_intake_1_throttle_area
    end  % function
    function MQC_2(~)
      design_intake_2_throttle_masslfow
    end  % function
    function MQC_3(~)
      design_intake_3_flow_to_cylinder
    end  % function
    function MQC_4(~)
      design_intake_4a_vol_eff_codegen
    end  % function
    function MQC_5(~)
      runIntakeIsothermal
      figIntakeIsothermal
    end  % function
  end  % methods
end  % classdef
