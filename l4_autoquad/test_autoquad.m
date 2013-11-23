f = @(x) exp(x);

[Q,n,x] = autoquad(f,0,1,1e-8, @cavSimp)

plot(x,f(x),'o');