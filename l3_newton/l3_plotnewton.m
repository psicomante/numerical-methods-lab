function plotnewton

yn = sin(xn)
c = divdiff(xn,yn)
xx = linspace(0,2*pi,100);
yy = newtoneval(xn,cxx);
plot(xx,yy,'r--',xn,yn,'o',xx,sin(xx),'b')
zn = yn + 0.001*(rand(1,8)-0.5);
cz = divdiff(xn,zn)
zx=newtoneval(xn,cz,xx);
plot(xx,yy,'r--',xn,yn,'o',xx,sin(xx),'b',xx,zz,'k')
plot(xx,yy-zz,'k')
% funzione di Runge 
f=@(x) 1./(25+x.^2);
yn=f(xn);
plot(xx,f(xx),'k',xn,yn,'ko')
xx=linspace(-5,5-500);
plot(xx,f(xx), 'k', xn,yn,'ko')