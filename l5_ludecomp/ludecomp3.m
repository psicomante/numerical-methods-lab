% Input : A matrice da decomporre
% Output: decomposizione A = LU in forma
% - la U è salvata nella parte traingolare superiore
% - mentre tril(A) contiene le informazioni
% - overo L=eye(N)+tril(A,-1)


% 1) senza pivoting
% 2) togliamo i "for" il più possibile
% -> 3) pivoting

function A = ludecomp3(A)

N = size(A); % square matrix
p = 1:N;

for c = 1:N-1
    
    %permutation vector update
    [~, i] = max(A(c,:));
    p(c) = i;
    
    %r-nth multiplier
    R = i+1:N;    
    
    A(R,i) = A(R,i) / A(i,i);
    % transform the r-nth row
    m = A(R,i);
    A(R,R) = A(R,R) - m*A(i,R);
end