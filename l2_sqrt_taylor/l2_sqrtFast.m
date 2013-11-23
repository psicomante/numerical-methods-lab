
% ex. [r,q] = l2_sqrtfast(3,1e-5)
function [r,it] = l2_sqrtFast(A, toll)
% return approximation of a square root of A, with a error <= toll

% divido A per 4^m in modo da avere un numero da 1/2 e 2
[f, e] = log2(A); %mantissa su esponente
m = floor (e/2);
A = pow2(A, -2*m); %divido per 4^m


it = 0;
r = A;
errors = 1;
% apply l2_sqrt.m
error = 2*toll;
while error > toll
    error = abs(r - sqrt(A));
    r = 0.5*(r + A/r);
    it = it + 1;
    
    errors(it) = error;
end

% multiply the result with mantissa
r = pow2(r,m);

figure;
plot(errors);