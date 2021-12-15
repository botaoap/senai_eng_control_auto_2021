% A simulação da resposta a uma entrada em degrau unitário é feita pela 
% função  step, como em:

function step_sys()

A = [0 1; -3 -2];
B = [0; 3];
C = [1 0];
D = [0];

sys = ss(A,B,C,D);

step(sys);
% Guarda as informacoes de deslocamento em y
% Guarda as informacoes de tempo em t
[y t] = step(sys, 10);

t = 0:0.01:15;
step(sys, t)

end