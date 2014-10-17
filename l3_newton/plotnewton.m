function plotnewton

%yn = sin(xn)

X = [0, 0.5, 1, 2];
Y = [1, 3, 7, 9];
C = divdiff(X,Y);
xx = linspace(-.5,3,200);
yy = newtoneval(X,C,xx);
plot(xx,yy,'-',X,Y,'ro');

% 
% zn = yn + 0.001*(rand(1,8)-0.5);
% cz = divdiff(xn,zn)
% zx=newtoneval(xn,cz,xx);
% plot(xx,yy,'r--',xn,yn,'o',xx,sin(xx),'b',xx,zz,'k')
% plot(xx,yy-zz,'k')
% % funzione di Runge 
% f=@(x) 1./(25+x.^2);
% yn=f(xn);
% plot(xx,f(xx),'k',xn,yn,'ko')
% xx=linspace(-5,5-500);
% plot(xx,f(xx), 'k', xn,yn,'ko')