A = rand(4);

% eigenvalues of A
disp('diag');
[V,D] = eig(A)
[lexa,k] = max(abs(diag(D)))
disp('vexa');
vexa = V(:,k)

% we found an iterative approximation of max(eig(A))
disp('powermet');
[l,v,L, iter] = powermet(A)

vexa-v
lexa-l