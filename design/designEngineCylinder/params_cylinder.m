% Copyright 2025 The MathWorks, Inc.

params.cylinder = struct;

params.cylinder.a_mm = paramfcn_cylinder_Stroke_mm();
params.cylinder.l_mm = paramfcn_cylinder_Conrod_mm();

params.cylinder.V_c_mm3 = paramfcn_cylinder_V_clearance_mm3();
params.cylinder.V_d_mm3 = paramfcn_cylinder_V_displ_mm3();
params.cylinder.r_c = paramfcn_cylinder_CompRatio();

params.cylinder.B_mm = paramfcn_cylinder_Bore_mm();

% Cylinder volume at TDC
params.cylinder.V_tdc_mm3 = cylinder_volume_mm3_matlab(0, params.cylinder.V_c_mm3, params.cylinder.a_mm, params.cylinder.l_mm, params.cylinder.B_mm);

%% For combustion calculation
% The exactness of the values below does not matter.
% You should feel comfortable changing these values within reasons.

% Pressure before combustion, p2
params.cylinder.p_c_TDC_kPa = 2367.6;

% Temperature before combustion, T2
params.cylinder.T_c_TDC_K = 559.9548;

% Temperature after combustion, T3
params.cylinder.T3_K = 3060;

% Pressure after combustion, p3
params.cylinder.p3_kPa = 12938;
