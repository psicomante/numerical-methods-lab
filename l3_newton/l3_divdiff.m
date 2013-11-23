% differenze divise (in italiano perché non ciovvoglia)
function C = divdiff(X,Y)
format long
%INPUT : same length vectors
%OUTPUT: vettore dei coeff. di newton del polinomio interpolatore
%Algoritmo: Calcolo delle differenze divise
N = length(X);
% output matrix

for i=2:N
    for j=N:-1:i
        Y(j) = (Y(j)-Y(j-1)) / (X(j) - X(j-i+1));
    end
end

C = Y;

end