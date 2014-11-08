format short

toll = 1e-4;
values = logspace(-3,8,100);
N = length(values);
    
r = zeros(N,1);
e = zeros(N,1);
i = zeros(N,1);

for z = 1:N
    [root, iter] = sqrt_fast(values(z),toll);
    r(z) = root;
    e(z) = abs(r(z) - sqrt(z)); 
    i(z) = iter;
end

%plot(values,i,'r*--');
%figure
semilogx(values,i,'r*--');

% Pensando a come ? strutturato l'algoritmo, il numero massimo iterazioni
%necessarie per ottenere una data precisione sar? necessario quando
%x/4^m risulta vicino a 2, quindi lo possiamo stimare sperimentalmente
%cos?

[r,N]=sqrt_fast(2.0-eps,1e-3)
[r,N]=sqrt_fast(2.0-eps,1e-7)
[r,N]=sqrt_fast(2.0-eps,1e-10)
[r,N]=sqrt_fast(2.0-eps,1e-15)

% Volendo, per un'applicazione specifica in cui serva sempre la stessa
%precisione, potremmo addirittura togliere i controlli con la stima
%dell'errore e far eseguire un numero fissato di iterazioni che
%abbiamo precedentemente stimato come indicato qui sopra... (Se lo
%fate, lasciate un commento ben chiaro nel codice!!!!!)