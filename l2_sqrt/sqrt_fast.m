
% ex. [r,q] = l2_sqrtfast(3,1e-5)
function [r,it] = sqrt_fast(A, toll)
% return approximation of a square root of A, with a error <= toll

% divido A per 4^m in modo da avere un numero da 1/2 e 2
[f, e] = log2(A); %mantissa su esponente
m = floor (e/2);
A = pow2(A, -2*m); %divido per 4^m

r=A; it=0;
error = 2*toll;
while error > toll
    r1=0.5*(r + A/r);
    it = it + 1; % iteration
    error = abs(r1 - r); % error calc
    r=r1;
end

% multiply the result with mantissa
r = pow2(r,m);

% Ora il numero di iterazioni dipende meno fortemente da x ed ?
% contenuto anche per valori di x molto grandi (o molto piccoli)
%Osservazione: ora sqrt(x/4^m) ? calcolata a meno di toll e quindi,
% per la propagazione degli errori, abbiamo che sqrt(x) ? calcolata a
% meno di toll*2^m, ma questo significa soltanto che il valore di toll
% che abbiamo fornito in ingresso ? interpretato come tolleranza
% relativa (e non tolleranza assoluta come in radqua.m)