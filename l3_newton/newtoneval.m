% Metodo di newton completo
% INPUT: nodi e coefficienti di un polinomio nella forma di newton

% yy: p(xx)
% c: differenze divise
% xnodi: nodi
% xx: punti su cui valutare il polinomio

% OUTPUT: valore/i del polinomio nel/i punto/i x

function p=newtoneval(c,xnodi,xx)

% c = [f[x1], f[x1,x2], f[x1,x2,x3], .... , f[x1...xn]
% p(x) = c1 + (x-x1)[c2 + (x-x2)[c3 + (x-x3)[....(x-xn)[c(n+1)]]

N = length(c);
p=0*xx + c(N); % p = costante = c(N), lungo quanto x

for k = N-1:-1:11
    p = p.*(xx-xnodi(k)) + c(k);
end