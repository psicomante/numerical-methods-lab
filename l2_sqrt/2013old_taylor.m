% lab_2013, no 2014

xx = linspace(-1,1);
plot(xx, sin(xx));

xx = linspace(-6,6);
plot(xx, sin(xx));

hold on

% allargato il rang in cui l'approssimazione ? buona
plot(xx,xx,'r');

% x^3/6, 2 grado del polinomio di tayolor
plot(xx,xx-xx.^3/6, 'k');

% x^5/120
plot(xx,xx - xx.^3/6 + xx.^5/120, 'm--');

% non si usa perch? bisogna calcoalare la derivata nel punto
hold off