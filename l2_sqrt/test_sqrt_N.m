A = 4;
N = 10;

results = zeros(1,N);
errors = zeros(1,N);

for z = 1:N
    results(z) = sqrt_N(A,z);
    errors(z) = abs(results(z) - sqrt(A));
end

% results convergence increasing iterations
plot(results);
figure

% lowering error
semilogy(errors);