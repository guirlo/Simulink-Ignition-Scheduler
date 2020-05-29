function V_c_mm3 = paramfcn_cylinder_V_clearance_mm3()
%% clearance volume
V_d_mm3 = paramfcn_cylinder_V_displ_mm3();
r_c = paramfcn_cylinder_CompRatio();
V_c_mm3 = V_d_mm3/(r_c - 1);
end
