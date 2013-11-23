% LU (Lower Upper) decomposition, without permutation and pivoting.
% The algorithm writes the result on the same memory area of input matrix.

% http://en.wikipedia.org/wiki/LU_decomposition

% Input : A, matrix to decompose
% Output: A, decomposed A as result of equation A = LU
% - U is the upper triangular matrix - triu(A)
% - L is the lower triangular part, including the diagonal.
% - so L=eye(N)+tril(A,-1) because the diagonal must be full of 1


% ludecomp1: without pivoting
% -> ludecomp2: optimizing deleting "for" 
% ludecomp3: with pivoting using the permutation matrix
function A = ludecomp2(A)

N = size(A); % square matrix

for c = 1:N-1
    %submatrix indexes
    R = c+1:N;
    
    % multipliers
    A(R,c) = A(R,c) / A(c,c);
    
    % U calculation
    A(R,R) = A(R,R) - A(R,c)*A(c,R);
end