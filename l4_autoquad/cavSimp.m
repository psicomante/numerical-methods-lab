function [Q] = cavSimp(f,a,b)
% Approssima l'integrale di f(x) su [a,b] con Cavalieri-Simpson su un
% intervallo.
% f = function handle, ossia "oggetto" che si pu? valutare in un punto x(double)
% a,b = estremi di integrazione (double)
% r = grado di esattezza polinomiale

m = (b+a)/2;
%Q = (b-a)*(1/6*f(a) + 4/6*f(m) + 1/6*f(b));

Q = (b-a)/6*(f(a) + 4*f(m) + f(b)); 
% effettuando meno operazioni ci sono 
%meno errori di approssimazione potenziali
