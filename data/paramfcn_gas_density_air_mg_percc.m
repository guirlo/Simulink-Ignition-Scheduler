function density_air_mg_percc = paramfcn_gas_density_air_mg_percc()
%% air density

p_amb_Pa = 1000 * paramfcn_ambient_p_kPa();
T_amb_K = paramfcn_ambient_T_K();
R_air = paramfcn_gas_R_air_J_perkg_perK();  % J/kg/K

density_air_mg_percc = p_amb_Pa / (R_air * T_amb_K);  % kg/m^3 = mg/cc
% 1.1792 mg/cc

end
