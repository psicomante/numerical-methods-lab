% dato che Cavalieri-Simpson ha un grado di esattezza polinomiale pari a 3,
% se noi usiamo un polinomio di grado 3 dovrebbe funzionare

f2 = @(x) 2*x^3 + 3*x^2 - 5*x + 7; % 20
res2 = cavSimp(f2,0,2); % calcoliamone l'integrale

% esponenziale
f = @(x) exp(x);
% array di intervalli
H=2.^(-(0:15));
ERR = zeros(1,length(H));
for k=1:length(H)
    Q = cavSimp(f,0,H(k));
    esatto = exp(H(k))-1;
    ERR(k) = Q - esatto;
end

loglog(H,ERR, '.-');
grid on
set(gca,'FontSize',18,'fontWeight','bold')
set(findall(gcf,'type','text'),'FontSize',20,'fontWeight','bold')
