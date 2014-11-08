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

plot(values,i,'r*--');
%figure
semilogx(values,i,'r*--');