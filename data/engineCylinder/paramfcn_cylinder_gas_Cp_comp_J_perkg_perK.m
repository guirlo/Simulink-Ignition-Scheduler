function Cp_c = paramfcn_cylinder_gas_Cp_comp_J_perkg_perK()
%% constant pressure specific heat Cp for polytropic compression process
R_air = paramfcn_gas_R_air();  % J/kg/K
k_c = paramfcn_cylinder_gas_Gamma_compression();
Cp_c = k_c*R_air/( k_c - 1 );  % J/kg/K
end
