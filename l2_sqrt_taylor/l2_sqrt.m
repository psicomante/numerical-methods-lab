
% ex. [r,q] = l2_squareroot(3,1e-5)
function [r,it] = l2_squareroot(A, toll)
% return approximation of a square root of A, with a error <= toll

% x0 = A, x(N+1) = 0.5 * (x_n + A/x_n)
% with the error estimation
% error = | xn - sqrt(A)|
%       < | xn+1 - xn | < toll

errors = 0;

it = 0;
r = A;
error = 2*toll;
while error > toll
    error = abs(r - sqrt(A));
    r = 0.5*(r + A/r);
    it = it + 1;
    
    errors(it) = error;
end

figure;
plot(errors);