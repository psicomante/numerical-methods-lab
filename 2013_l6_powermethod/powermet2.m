function [l, v, iter, l_seq] = powermet2(A, toll, nmax)

% default max operation allowed
if (nargin < 3)
    nmax = 1000;
end

% default tollerance
if (nargin < 2)
    toll = 1e-6;
end

n = length(A);

% column vector of ones
x = ones(n,1); %or x = rand(n,1);

y = x / norm(x);
x = A * y;
l_old = y' * x;

% all eigenvalues
if (nargout > 3)
    l_seq = l_old;
end

% first iteration
iter = 1;
% default error (a great value)
err = 2*toll;

while (err > toll && iter < nmax)
    
    y = x / norm(x);
    
    
    x = A * y;
    
    % eigenvalue calculus
    l = y' * x;
    
    err = abs((l - l_old) /l);
    
    l_old = l;
    
    % iterations
    iter = iter + 1;
    
    if (nargout > 3)
        l_seq(iter) = 1;
    end
    
end

v = x / norm(x);