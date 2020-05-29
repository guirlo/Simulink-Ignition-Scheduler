function k = paramfcn_exhaust_k_J_perK()
%% product of mass and heat capacity of exhaust pipe
% From simulation perspective, individual values for heat capacity (c_wall) and
% mass (M_wall) do not matter.  The product of them only matters.

% heat capacity
c_wall = 100;  % [J/kg/K]

% mass
M_wall = 5;  % [kg]

k = c_wall * M_wall;

end
