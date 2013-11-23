function l2_squarerootNTest(A,N)
format short
l2_squarerootN(A,N) - sqrt(N)

results = zeros(1,N);
errors = zeros(1,N);

for z = 1:N
    results(z) = l2_squarerootN(A,z);
    errors(z) = abs(results(z) - sqrt(z));
    
end

plot(results);
figure
semilogy(errors);