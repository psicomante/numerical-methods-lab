% LU (Lower Upper) decomposition, without permutation and pivoting.
% The algorithm writes the result on the same memory area of input matrix.

% http://en.wikipedia.org/wiki/LU_decomposition

% Input : A, matrix to decompose
% Output: A, decomposed A as result of equation A = LU
% - U is the upper triangular matrix - triu(A)
% - L is the lower triangular part, including the diagonal.
% - so L=eye(N)+tril(A,-1) because the diagonal must be full of 1


% ludecomp1: without pivoting
% ludecomp2: optimizing deleting "for" 
% -> ludecomp3: with partial pivoting using the permutation matrix

function [A,PERM] = ludecomp3(A)

N = size(A); % square matrix
PERM = 1:N;
% [3 1 2 4]

for c = 1:N-1
    % permuted matrix
    A(PERM,:);
    
    % permutation vector update
    [~, i] = max(abs(A(PERM(c:N),c)));
    
    % real pivot retrieval from the i-nth row of permutation vector (because ma
    % calculate the magnitude, we can have the wrong sign
    pivot = A(PERM(i+c-1),c);
    % because the i-nth is a submatrix, 
    % we sum the i to the gap of already elaborated rows: c-1
    
    % inverting interested rows
    PERM([c, c-1+i]) = PERM([c-1+i,c]);
    
    % BAD WAY
    %t = PERM(c);
    %PERM(c) = i+c-1;
    %PERM(i+c-1) = t;
    
    % vector of Permuted Rows
    R = PERM(c+1:N);
    
    % multiplier
    A(R,c) = A(R,c) / pivot;
    
    % vector of Kolumns :D (without permutation because the permutation is
    % partial
    K = c+1:N;
    
    % transform the A(R,K) submatrix
    A(R,K) = A(R,K) - A(R,c)*A(PERM(c),K);
end