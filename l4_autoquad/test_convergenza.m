% trapezio
TR.pesi = [1/2, 1/2];
TR.A = 0;
TR.B = 1;
TR.xnodi = [0,1];

% cavalieri simpson
CS.pesi = [1/6, 2/3, 1/6];
CS.A = 0;
CS.B = 1;
CS.xnodi = [0,0.5,1];

G2.pesi = [0.5, 0.5];
G2.xnodi = [-0.5774, 0.5774];
G2.A = 0;
G2.B = 1;

G3.pesi = [0.5, 0.5];
G3.xnodi = [-0.5774, 0.5774];
G3.A = -1;
G3.B = 1;

f = @(x) exp(x);
% array di intervalli
H=2.^(-(0:15));
ERR = zeros(1,length(H));
for k=1:length(H)
    Q = quadra(f,0,H(k),CS);
    esatto = exp(H(k))-1;
    ERR(k) = Q - esatto;
end

loglog(H,abs(ERR), '.-');
grid on
set(gca,'FontSize',18,'fontWeight','bold')