format short

toll = 1e-4;
val = 4;

[root, iter, values] = sqrt_babylon(val,toll);

plot(1:length(values),values,'b*--');