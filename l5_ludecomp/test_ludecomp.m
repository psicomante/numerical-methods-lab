% define A
A = [2 3 1 0; 4 1 2 1; -2 3 0 1; 2 0 1 0];
% calc A = LU
RA = ludecomp(A);

% test
U = triu(A);
L = tril(A,-1)+eye(size(A,1));
LU = L*U
res = A - LU