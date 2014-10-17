% Calcola le differenze divise di Newton
% X e Y rappresentano le due componenti di un insieme di punti
% X: nodi
% Y: valori da interpolare
% C: differenze divise
% OUTPUT: vettore dei coeff. di newton del polinomio interpolatore

function C = divdiff_v1b(X,Y)

%Algoritmo: Calcolo delle differenze divise
assert(length(X) == length(Y));
N = length(X);
% output matrix

for i=1:N-1
    for j=N:-1:i+1
        Y(j) = (Y(j)-Y(j-1)) / (X(j) - X(j-i));
    end
end

C = Y;

end