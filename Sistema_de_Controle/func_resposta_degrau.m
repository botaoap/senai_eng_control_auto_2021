% Função setp() plota a resposta ao degrau unitario de uma função de
% transferencia

function func_transferencia()

H = tf([1 1], [1 1 1]);
step(H)

end