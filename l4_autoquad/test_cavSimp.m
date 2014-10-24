% dato che Cavalieri-Simpson ha un grado di esattezza polinomiale pari a 3,
% se noi usiamo un polinomio di grado 3 dovrebbe funzionare

f = @(x) exp(x);
res = cavSimp(f,0,2);

f2 = @(x) 2*x^3 + 3*x^2 - 5*x + 7; % 20
res2 = cavSimp(f2,0,2); % calcoliamone l'integrale
