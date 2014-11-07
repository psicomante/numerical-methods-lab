% LU (Lower Upper) decomposition, without permutation and pivoting.
% The algorithm writes the result on the same memory area of input matrix.

% http://en.wikipedia.org/wiki/LU_decomposition

% Input : A, matrix to decompose
% Output: A, decomposed A as result of equation A = LU, compact form
% - U is the upper triangular matrix [command: triu(A)]
% - L is the lower triangular part, including the diagonal.
% - so L=eye(N)+tril(A,-1) because the diagonal must be full of 1
% testing:
% U = triu(A); L = eye(N)+tril(A,-1);
% must be A = L*U

% ludecomp1: without pivoting
% -> ludecomp2: optimizing deleting "for" 
% ludecomp3: with pivoting using the permutation matrix
function A = ludecomp2(A)

assert(size(A,1) == size(A,2)) ; % square matrix
N = size(A); % square matrix

for c = 1:N-1
    %submatrix indexes
    R = c+1:N;
    
    % multipliers
    A(R,c) = A(R,c) / A(c,c);
    
    % U calculation
    A(R,R) = A(R,R) - A(R,c)*A(c,R);
    % because [N-1 x 1], [1 x N-1], is a value
end