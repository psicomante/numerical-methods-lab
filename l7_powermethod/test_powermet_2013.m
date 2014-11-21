A = rand(3)

At = A';

% eigenvalues of A
eig(A)

% we found an iterative approximation of max(eig(A))
powermet_2013(A,10)