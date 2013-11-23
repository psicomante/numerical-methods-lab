function I = cavSimpComp(f,a,b,N)
% function I = cavSimpComp(f,a,b,N)
% f: function handle
% a,b: integration edges
% N: subintervals number
% I: Integral of f(x) on [a,b]
%    calc with the composite formula
%    of Cavalieri-Simpson with N subintervals

H = (b-a)/N;
%estremi dei sottointervalli
xe = linspace(a,b,N+1);
%punti medi dei sottoinervalli
xm = linspace(a+H/2,b-H/2,N);

% valori degli estremi
fxe = f(xe);
% valori dei punti medi
fxm = f(xm);

I = 0;

    %I = I + fxe(k-1) + 4 * fxm(k) + fxe(k);
    I = H*(1/6*fxe(1)+1/6*fxe(end)+1/3*sum(fxe(2:end-1))+2/3*sum(fxm));

%I = I*(H/6);