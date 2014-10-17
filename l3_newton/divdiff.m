% Calcola le differenze divise di Newton
% X e Y rappresentano le due componenti di un insieme di punti
% X: nodi
% Y: valori da interpolare
% C: differenze divise

function C = divdiff(X,Y)
format long
%OUTPUT: vettore dei coeff. di newton del polinomio interpolatore

%Algoritmo: Calcolo delle differenze divise
assert(length(X) == length(Y));
N = length(X);
% output matrix

for i=2:N
    for j=N:-1:i
        Y(j) = (Y(j)-Y(j-1)) / (X(j) - X(j-i+1));
    end
end

C = Y;

end