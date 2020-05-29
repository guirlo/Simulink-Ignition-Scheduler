function h_rad = paramfcn_exhaust_radiationHeatCoeff_W_perm2_perK4()
%% radiation heat transfer coefficient at exhaust
% h_rad = F_v*epsilon*sigma in the first equation of Model 7.21 in [EN14]

k = 0.3;  % between 0.1 and 0.7 (see Fig A.3 at p.535 of [EN14])
sigma_SB = 5.7e-8;  % [W/m^2/K^4] Stefan-Boltzmann constant
h_rad = k*sigma_SB;  % [W/m^2/K^4]
end
