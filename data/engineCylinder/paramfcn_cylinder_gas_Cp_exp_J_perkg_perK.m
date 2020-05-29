function Cp_e = paramfcn_cylinder_gas_Cp_exp_J_perkg_perK()
%% constant pressure specific heat Cp for polytropic expansion process
R_air = paramfcn_gas_R_air_J_perkg_perK();  % J/kg/K
k_e = paramfcn_cylinder_gas_Gamma_expansion();
Cp_e = k_e*R_air/( k_e - 1 );  % J/kg/K
end
