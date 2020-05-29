function R_air = paramfcn_gas_R_air_J_perkg_perK()
%% specific gas constant of dry air
% p*V == N*R_u*T == M*R_s*T
% -> (for 1 mole) R_s == R_u/M

R_u = paramfcn_gas_R_univ_J_permole_perK();  % J/mol/K
Mw_air = paramfcn_gas_Mw_Air_gram_permole();  % g/mol

R_air = R_u / Mw_air *1000;  % J/kg/K
% 288.1965 J/kg/K

end
