function [w_opt,Fval_opt,output]=NAG(Fwithgrad,w0,eta,beta,epsilon,Kmax)

k=0;  % contador de iterações
wk=w0;
output=[];
mk= zeros(length(w0),1);

while (k <= Kmax)
    [Fk,gradk]=Fwithgrad(wk);
    norma=norm(gradk,inf);
    
    if (norma <= epsilon)       
        output=[output; k wk' Fk gradk' eta norma];
        break;
    end
    
    %% para guardar informação
    output=[output; k wk' Fk gradk' eta norma];
    
    %% Ponto Lookahead (Antecipação)
    w_ahead = wk + beta * mk;
    [~, grad_ahead] = Fwithgrad(w_ahead);
    
    %% Atualização da direção/momento com o gradiente futuro
    mk = beta * mk - eta * grad_ahead;
    
    %% Novo ponto
    wk = wk + mk;
    k = k + 1;
end
w_opt=wk;
Fval_opt=Fk;
end