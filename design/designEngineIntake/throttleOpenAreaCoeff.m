function k = throttleOpenAreaCoeff(S_leak_cm2, D_thr_cm, theta_rest_deg)
%% Computes the coefficients of the polynomial curve for the throttle open area
%
% See "design_intake_1_throttle_area.mlx" for the detailed explanations.

% Numerical approach
% x0 = zeros(1,4);
% k = fsolve(@(x) throttleParamEqs(x,S_leak_cm2,D_thr_cm,theta_rest_deg/180*pi), x0);

% Analytic approach
k = throttleParamEqsAnalytic(S_leak_cm2,D_thr_cm,theta_rest_deg/180*pi);

assert( k(1) > 0 )
assert( k(2) < 0 )
assert( k(3) > 0 )
assert( k(4) < 0 )

end
