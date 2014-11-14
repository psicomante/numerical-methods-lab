function x = lusolve(B,b,p)
% Risolve il sistema lineare con termine noto \vec{b}
% (B,p) sono l'output di ludecomp
% ovvero U=triu(B(p,:)) e
% L=eye(N)+tril(B(p,:),-1)
% Per risolvere A*X=b, risolviamo L*U*x=b(p,:)
% risolvendo prima il sistema tr. infer. L*y=b(p,:)
% col metodo di sostituzione in avanti e poi quello
% tr. sup. U*x=y col metodo di sostituzione all'indietro
% NOTA: non occorre formare esplicitamente le matrix L,U

% per il debug:
% i comandi [B,p]=ludecomp(A); x=lusolve(B,p,b)
% dovrebbero fornire lo stesso risultato di x=A\b

N = length(B);

if (nargin < 3)
    p = 1:N; % assume che non sia stato fatto pivoting
end

% Ly=b, risolvo il sistema di matrice L
% primo passo
%y(1) = bp(1)/L(1,1);
y=b(p); % y(1) ? gi? corretto: y(1)=b(1)/L(1,1)=b(1)
        % inoltre permutiamo b in modo da avere B e b permutati
for k=2:N
    J=1:k-1;
    y(k) = y(k) - B(p(k),J)*y(J); % 
    % dovrei dividere per L(k,k) che per? ? sempre 1
end

% risolvo il sistema di matrice U
x=y; % serve solo a dimensionare la variabile x

for k=N:-1:1
    J=k+1:N;
    x(k) = (y(k) - B(p(k),J)*x(J)) / B(p(k),k);
end
