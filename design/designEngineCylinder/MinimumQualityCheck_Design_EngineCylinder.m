classdef MinimumQualityCheck_Design_EngineCylinder < matlab.unittest.TestCase
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
      design_air_fuel_raio
    end  % function
    function MQC_2(~)
      design_cylinder_1_Piston_Mechanics
    end  % function
    function MQC_3(~)
      design_cylinder_2_Compression
    end  % function
    function MQC_4(~)
      design_cylinder_3_Otto_Combustion
    end  % function
    function MQC_5(~)
      design_cylinder_4_Expansion
    end  % function
    function MQC_6(~)
      design_cylinder_5_Combustion_Process_2b
    end  % function
    function MQC_7(~)
      design_Otto_efficiency_1a
    end  % function
  end  % methods
end  % classdef
