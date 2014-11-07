f = @(x) 2*x.^3 + 3*x.^2 - 5*x + 7; % 20

% trapezio
TR.pesi = [1/2, 1/2];
TR.A = 0;
TR.B = 1;
TR.xnodi = [0,1];
resTR = quadra(f,0,2,TR); % calcoliamone l'integrale

% cavalieri simpson
CS.pesi = [1/6, 2/3, 1/6];
CS.A = 0;
CS.B = 1;
CS.xnodi = [0,0.5,1];
resCS = quadra(f,0,2,CS); % calcoliamone l'integrale

G2.pesi = [0.5, 0.5];
G2.xnodi = [-0.5774, 0.5774];
G2.A = 0;
G2.B = 1;
resG2a = quadra(f,0,2,G2); % calcoliamone l'integrale

G3.pesi = [0.5, 0.5];
G3.xnodi = [-0.5774, 0.5774];
G3.A = -1;
G3.B = 1;
resG2b = quadra(f,0,2,G3);

