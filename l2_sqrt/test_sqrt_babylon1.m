format short

toll = 1e-4;
values = [.0000000003, .0000003, .0003, .3, 30000, 3000000000, 300000000000];
N = length(values);
    
r = zeros(N,1);
e = zeros(N,1);
i = zeros(N,1);

for z = 1:N
    [root, iter] = sqrt_babylon(values(z),toll);
    r(z) = root;
    e(z) = abs(r(z) - sqrt(z)); 
    i(z) = iter;
end

%plot(values,i,'r*--');
%figure
semilogx(values,i,'r*--');

% Osserviamo che il numero di iterazioni necessarie aumenta
%quado il radicando si allontana da 1. Quindi creiamo una nuova versione
%dell'algoritmo che divida il radicando x per 4^m, calcoli la radice
%di (x/4^m) col metodo iterativo e poi moltiplichi il risultato per
%2^m. Questo modo di procedere ? conveniente se posso trovare
%facilmente un esponente m tale che x/4^m stia (ad esempio) in [1/2,2]
%Questo problema ? facilmente risolubile usando la rappresentazione
%binaria del numero floating point x (funzione log2 in MatLab, logb()
%in C/C++) e usando la moltiplicazione veloce per potenze di 2 che
%modifica solo l'esponente della rappresentazione binaria (funzione
%pow2 in MatLab e ldexp() in C/C++). Si veda 'doc log2' in MatLab.