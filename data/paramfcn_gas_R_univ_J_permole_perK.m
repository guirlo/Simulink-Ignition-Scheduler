function R_u = paramfcn_gas_R_univ_J_permole_perK()
%% universal gas constant
% R_u = p*V/(n*T)
% Volume of 1 mole of ideal gas == 22.4 liter

R_u = 101325*22.4/273.15/1000;  % J/mol/K
% 8.3093 J/mol/K

end
