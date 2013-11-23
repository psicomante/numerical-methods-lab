function [Q,n,x] = autoquad(f,a,b,toll,S)
% quadratura automatica
% dove S è una function 
%   [I,r] = S(f,a,b)
% con r = esattezza polinomiale
%
% che applica la formula con un intervallo
% Q=valore integrale
% n=numero sottointervalli
% x=punti medi intervalli usati


% calcolo integrale
[I,r] = S(f,a,b);

% pto medio
m = (a+b)/2;

% primo intervallo
I1 = S(f,a,m);
% secondo intervallo
I2 = S(f,m,b);

error_est = (I - (I1+I2) ) / (2^(r+1) -1);

if ( error_est > toll)
    [I1,n1,x1] = autoquad(f,a,m,toll/2,S);
    [I2,n2,x2] = autoquad(f,m,b,toll/2,S);
    Q = I1 + I2;
    n = n1+n2;
    x = [x1,x2];
else
    Q = I1 + I2;
    n = 2;
    % pto medio del sottointervallo di sx, pto medio del sottointervallo di
    % dx
    x = [(a+m)/2,(b+m)/2];
end


