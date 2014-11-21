function [l, v, L, iter] = powermet(A, toll, maxiter, inverso)
% Applica il metodo delle potenze per approssimare 
% il max autovalore di A
% Input: matrice A, tolleranza toll, max iterazioni (def:100)
%            inverso = true per approssimare min autovalore
% Output: max autovalore, autovettore, sequnza approx di l
%         L opzionale = successione degli "l" calcolati

% per il debug:
% data una matrice A,
% l deve approssimare l'autovettore corrispondente
% [V,D] = eig(A);
% [lexa, k] = max(abs(diag(D));
% vexa = V(:,k);

% assert
assert(size(A,1) == size(A,2));
N = length(A);

if nargin < 4
    inverso = false;
end

% default max operation allowed
if (nargin < 3)
    maxiter = 100;
end

% default tollerance
if (nargin < 2)
    toll = 1e-6;
end

y = rand(N,1);
%x = ones(n,1);

% iterator
iter = 0;

L = zeros(maxiter,1);

% default error (a great value)
err = 2*toll;

while (err > toll && iter < maxiter)
    
    x = y / norm(y); 
    
    if inverso
        y = A \ x;
    else
        % y -> autovettore di \lambda max
        y = A * x;  
    end
    
    % eigenvalue calculus:
    % l -> \lambda max
    l = x' * y; % prodotto scalare, riga per colonna
    
    % stimatore d'errore
    if (iter > 0)
        err = abs((l - l_old)/l);
    end
    
    l_old = l;       % aggiorno l_old
    iter = iter + 1; % aggiorno iteratore
    
    if (nargout > 3)
        L(iter+1) = l;
    end
    
end

v = y / norm(y);

if inverso
    l = 1.0 / l;
    L = 1.0 ./ L;
end