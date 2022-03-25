%usar sisotool para verificar os graficos gerados
% F,C,G,H
%FUNÇÃO DE TRANSFERENCIA DE SEGUNDA ORDEM%

F = tf(3);
C = tf(2,[1 0]);
G = tf(5);
H = tf(4);

%escrever sisotool on commando line%