% Calcola le differenze divise di Newton
% X e Y rappresentano le due componenti di un insieme di punti
% X: nodi
% Y: valori da interpolare
% C: differenze divise

function F = divdiff_v2(X,Y)
format long
%OUTPUT: vettore dei coeff. di newton del polinomio interpolatore

%Algoritmo: Calcolo delle differenze divise
assert(length(X) == length(Y));
N = length(X);
F=zeros(N);
F(:,1)=Y;

for i=2:N
    J = 1:N-i+1;
    F(J,i) = (F(J+1, i-1) - F(J, i-1)) ./ (X(J+i-1) - X(J));
end

end