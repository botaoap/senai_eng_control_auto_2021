% Função feedback() calcula a função de transferencia equivalente da
% realimentacao de uma função de transferencia por outra

function func_transferencia()

X = tf([1 0 1], [1 1 1]);

H = feedback(X, 1)

end