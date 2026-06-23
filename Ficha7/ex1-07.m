syms w1 w2 w3 y1

F = w1^2-2*w1+w2^2-w3^2+4*w3;
c1 = w1-w2+2*w3-2;

% Definir a função lagranjiana

L = F-y1*c1;

% Verificar se o ponto é admissivel 
C1_ad = subs(c1, [w1 w2 w3], [2.5 -1.5 -1]);


%Calcular o gradiente da restrição c1

gradC1 = gradient(c1, [w1, w2, w3]);
% como gradc1 != 0 0 0 então é regular


% Verificar as condições de optimalidade 

% Calcular o gradiente da função lagranjiana L
gradL = gradient(L, [w1, w2, w3, y1]);
vec = [0 0 0 0];
[ws1 ws2 ws3 ys1] = solve(gradL == vec);

HessL = hessian(L,[w1 w2 w3])