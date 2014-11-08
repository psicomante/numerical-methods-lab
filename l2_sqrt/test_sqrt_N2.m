values = [3,357,30057];
it = 10;

results = zeros(1,length(values));
errors = zeros(1,length(values));

for z = 1:length(values)
    results(z) = sqrt_N(values(z),it);
    errors(z) = abs(results(z) - sqrt(values(z)));
end

plot(results, errors, 'r*--');


it = 11;

results = zeros(1,length(values));
errors = zeros(1,length(values));

for z = 1:length(values)
    results(z) = sqrt_N(values(z),it);
    errors(z) = abs(results(z) - sqrt(values(z)));
end

figure;
plot(results, errors, 'r*--');