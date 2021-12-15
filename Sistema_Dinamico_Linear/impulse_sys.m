% Para simular a resposta a um impulso unitário (em t = 0s) de um sistema 
% utiliza- se a função impulse, fornecendo as matrizes representativas do 
% sistema pela variável tipo sys. Considerando o sistema sys do exemplo 
% anterior, a resposta ao impulso é obtida com o comando:

function impulse_sys()

A = [0 1; -3 -2];
B = [0; 3];
C = [1 0];
D = [0];

sys = ss(A,B,C,D);

impulse(sys);

% Guarda as informacoes de deslocamento em y
% Guarda as informacoes de tempo em t
[y t] = impulse(sys, 10);

end