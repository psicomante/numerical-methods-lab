A=rand(100);

% LU decomposition with for
tic; ludecomp1(A);toc
% Elapsed time is 0.331252 seconds.

% LU decomposition with matrix indexes
tic; ludecomp2(A);toc
% Elapsed time is 0.004061 seconds.

% LU decomposition with permutation matrix
tic; ludecomp3(A);toc
% Elapsed time is 0.006274 seconds.


A=rand(200);

% LU decomposition with for
tic; ludecomp1(A);toc
% Elapsed time is 2.863309 seconds.

% LU decomposition with matrix indexes
tic; ludecomp2(A);toc
% Elapsed time is 0.033767 seconds.

% LU decomposition with permutation matrix
tic; ludecomp3(A);toc
% Elapsed time is 0.012912 seconds.

A=rand(300);

% LU decomposition with for
tic; ludecomp1(A);toc
% Elapsed time is 8.613718 seconds.

% LU decomposition with matrix indexes
tic; ludecomp2(A);toc
% Elapsed time is 0.062917 seconds.

% LU decomposition with permutation matrix
tic; ludecomp3(A);toc
% Elapsed time is 0.038382 seconds.