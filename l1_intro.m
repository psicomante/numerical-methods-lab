% Lesson 01 - Matlab Intro, Copyright 2013, Roberto 'psicomante' Pesando
%  
% This program is free software; you can redistribute it and/or modify
% it under the terms of the GNU General Public License as published by
% the Free Software Foundation; either version 2 of the License, or (at
% your option) any later version.
% 
% This program is distributed in the hope that it will be useful, but
% WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY
% or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License
% for more details.
% 
% You should have received a copy of the GNU General Public License
% along with this program as the file LICENSE.txt; if not, please see
% http://www.gnu.org/licenses/old-licenses/gpl-2.0.txt.

%creates a vector from value 0 to pi, with a pi/200 step
x = linspace(0, pi, 200);

% crea un vettore di 200 elementi
sinx = sin(x);

% plotta il grafico
plot(x, sinx);

% crea un valore double
num = 1/3

format long
num

format short
num

format long e
num

format short e
num

% formato compatto
format compact
num

% tiene il valore vecchio del plot e il nuovo lo sovrappone
hold on

% traccia il grafico di cos(x) in rosso
plot(x, cos(x), 'r');

% traccia il grafico di exp(x) in nero tratteggiato
plot(x, exp(x), 'k--');

% reflush grafico attivo
hold off

% vettore da 0 a 2*pi incrementando di 1
% è diverso da linspace, perché in questo metodo il punto di arrivo può non
% essere compreso perché l'importante è il passo.
v = (0:1:2*pi)

% accende la griglia
grid on

% se vogliamo moltiplicare ogni singolo valore del vettore per se stesso
% operazione matriciale, non funziona
% x^2

% operazione matriciale uguale, non funziona uguale
% x*x

% bisogna usare il punto
v.^2
v.^v
v.*v
2./v
v./v



