function [I,r] = cavSimp(f,a,b)
% Cavalieri-Simpson con 1 intervallo
% r = grado di esattezza polinomiale
I = (b-a)*(f(a)+4*f((a+b)/2)+f(b))/6;
r = 3;