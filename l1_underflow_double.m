% phenomenon of underflow in double values
%
% calculate sqrt(x^2 + 1)-x

format short e

% simple
% xx = [1,10,100,1000,10000];

%compact
xx = 10.^(0:15);

% bad way of programming with matlab, low performance

%for k = 1:length(xx)
%   F(k) = sqrt(xx(k)^2 + 1) - xx(k);  
%end

% good way to programming the problem

F = sqrt(xx.^2+1) - xx

% ita
% maniera per evitare l'underflow
% usando la differenza di quadrati

% sqrt(x.^2+1) - x*[sqrt(x.^2+1)+x] / [sqrt(x.^2+1)+x]
% [x^2+1 - x^2] / [sqrt(x.^2+1) + x]
% 1/(sqrt(x.^2+1)+x)
E = 1./(sqrt(xx.^2+1) + xx)

