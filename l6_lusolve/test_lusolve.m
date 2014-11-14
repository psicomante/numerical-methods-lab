addpath('l5_ludecomp');
addpath('l6_lusolve');

A = [2 3 4 -2; 1 -2 4 -3; 4 3 -1 1; 3 -4 2 -2];
b = [1 2 2 5];

[B] = ludecomp2(A);
X = lusolve(B,b');

Xb = A\b';