function [l, v] = powermet(A, toll)

n = length(A);

% column vector of ones
x = ones(n,1); %or x = rand(n,1);

for i=1:niter
    
    y = x / norm(x);
    
    
    x = A * y;
    
    % eigenvalue calculus
    l = y' * x;
    
end

v = x / norm(x);