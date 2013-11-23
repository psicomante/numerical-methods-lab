function r = l2_squarerootN(A,N)
% return N value of the succession
% x_0 = A, X_(N+1) = 0.5*(x_n + A/x_n)

r = A;
for z = 1:N
    r = 0.5*(r + A/r);
end