% original matrix
N=[1 2 3 0; 5 4 3 4; 8 11 12 15;1 2 4 1];

% LU decomposition
A = ludecomp2(N);

U=triu(A);
L=eye(length(N)) + tril(A,-1);
LU = L*U;
N-LU

