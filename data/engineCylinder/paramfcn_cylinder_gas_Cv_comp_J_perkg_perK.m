function Cv_c = paramfcn_cylinder_gas_Cv_comp_J_perkg_perK()
%% constant volume specific heat Cv for polytropic compression process
R_air = paramfcn_gas_R_air_J_perkg_perK();  % J/kg/K
k_c = paramfcn_cylinder_gas_Gamma_compression();
Cv_c = R_air/( k_c - 1 );  % J/kg/K
end
