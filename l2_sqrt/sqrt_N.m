function r = sqrt_N(x,N)
% return N value of the succession
% r_0 = x
% r_{k+1} = (r_k + x/r_k)/2

% returns the last computed value

r=x;
for k=1:N
    r=0.5*(r+x/r);
end