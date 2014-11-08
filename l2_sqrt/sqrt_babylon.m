function [r,it,val] = sqrt_babylon(A, toll)
% return approximation of a square root of A, with a error <= toll
% using the succession
%   x_0=A , x_(N+1) = 0.5*(x_n + A/x_n)
% (which is the babylonian method, 
%  http://en.wikipedia.org/wiki/Methods_of_computing_square_roots#Babylonian_method)
% 
% with the error estimation
% error = | x_n - sqrt(A)|
%       < | x_n+1 - x_n | < toll
%
% Inputs
%   A: square root value
%   toll: maximum error allowed
% Output
%   r: square root value
%   it: iteration used to reach that value with the maximum tollerance
%       allowed.

r=A; it=0; val = 0;
error = 2*toll;
while error > toll
    r1=0.5*(r + A/r);
    it = it + 1; % iteration
    error = abs(r1 - r); % error calc
    r=r1;
    val(it) = r1; % saving partial values
end