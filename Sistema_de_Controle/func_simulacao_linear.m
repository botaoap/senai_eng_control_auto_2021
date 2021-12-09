% Função lsim() plota a resposta a um sinal de entrada generico de uma
% função de transferencia

function func_transferencia()

H = tf([2], [1 2 1]);
[u ,t] = gensig('square', 2, 10, 0.01);
lsim(H, u , t)
axis([0 10 -0.5 1.5])

end