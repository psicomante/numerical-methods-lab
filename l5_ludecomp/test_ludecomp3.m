% original matrix
A=[1 2 3 0; 5 4 3 4; 8 11 12 15;1 2 4 1]

% LU decomposition and Permutation matrix
[B,PERM]=ludecomp3(A)

U=triu(B(PERM,:))
L=eye(4) + tril(B(PERM,:),-1);
L*U-A(PERM,:)

I = eye(4)
P = I(PERM,:);

% verify that our algorithm is correct (using matlab LU function)
[Lm,Um,Pm]=lu(A)

