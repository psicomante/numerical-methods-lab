f = @(x) exp(x);

NN=2.^(1:7);
ERR = zeros(length(NN));

for k = 1:length(NN)
    I = cavSimpComp(f,0,1,NN(k));
    ERR(k) = abs((exp(1) - 1) - I);
end

% compare with N^(-4)
loglog(NN,ERR,'o-', NN, NN.^(-4), '--'); xlabel 'N'; ylabel 'Error';


polyfit(log(NN), log(ERR), 1)
% -3.998698207737835  -7.429298138994687
% where we consider wh