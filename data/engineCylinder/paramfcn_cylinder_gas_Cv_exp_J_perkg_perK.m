function Cv_e = paramfcn_cylinder_gas_Cv_exp_J_perkg_perK()
%% constant volume specific heat Cv for polytropic expansion process
R_air = paramfcn_gas_R_air_J_perkg_perK();  % J/kg/K
k_e = paramfcn_cylinder_gas_Gamma_expansion();
Cv_e = R_air/( k_e - 1 );  % J/kg/K
end
