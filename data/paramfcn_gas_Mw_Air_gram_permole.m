function Mw_Air_gram_permole = paramfcn_gas_Mw_Air_gram_permole()
%% molar mass (molecular weight) of dry air

Mw_N2 = paramfcn_gas_Mw_N2_gram_permole();
Mw_O2 = paramfcn_gas_Mw_O2_gram_permole();

Mw_Air_gram_permole = 0.792*Mw_N2 + 0.208*Mw_O2;  % [g/mol]
% 28.8320 g/mol

end
