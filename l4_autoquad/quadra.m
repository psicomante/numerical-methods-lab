% Q.pesi = pesi
% 
function Q = quadra(f,a,b,Q)
% Approssima l'integrale di f(x) su [a,b]
% usando la quadratura numerica Q con 1 intervallo
% 
% f: function handle
% a,b: estremi di integrazione
% Q: struct che definisce la formula di quadratura
%   Q.A, Q.B  : intervallo di riferimento
%   Q.xnodi   : posizione dei nodi in [A,B]
%   Q.pesi    : pesi
%

% (tk-a)/(b-a) = (Xk - A)/(B-A)
% tk = a + (b-a)/(B-A)(Xk-A)
h = b-a;
xn = a + (Q.B-Q.A)/h*(Q.xnodi-Q.A); % nodi riscalati in [a,b]
fn = f(xn); % valori di f(x) nei nodi (vettore riga)
Q = h * (Q.pesi * fn'); % (prodotto riga x colonna e sommo tutto)






