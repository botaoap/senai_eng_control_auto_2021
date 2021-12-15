% Para simular a resposta de um sistema linear a uma entrada genérica é 
% preciso  usar a função lsim, fornecendo a especificação do sistema e os 
% vetores de entrada e de tempo de simulação. Para o sistema sys definido 
% anteriormente,

function entrada_generica()

A = [0 1; -3 -2];
B = [0; 3];
C = [1 0];
D = [0];

sys = ss(A,B,C,D);

t = 0:0.1:10;
u = zeros(length(t), 1);
u(21:30) = 0.5;
lsim(sys,u,t)

end