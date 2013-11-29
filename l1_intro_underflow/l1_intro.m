% Lesson 01 - Matlab Intro, Copyright 2013, Roberto 'psicomante' Pesando

%creates a vector from value 0 to pi, with a pi/200 step
x = linspace(0, pi, 200);

% vector of 200 elements
sinx = sin(x);

% plotta il grafico
figure;plot(x, sinx, 'b');

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

legend('cos(x)', 'sin(x)', 'exp(-x)');

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

S = realmax

x = 1e308
x = 1.0000e+38
200*x
%ans = Inf
% overflow as soon the variables gets over realmax

s = realmin

% sotto realmin, modifica interna della rappresentazione per poter
% scendere un po' di più verso lo zero (con minori cifre significative)
s / 200

s / 20000

s / 1e16 %underflow


I = realmin



