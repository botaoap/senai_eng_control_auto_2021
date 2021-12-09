% Função pzmap() plota os pólos e zeros de uma função de transferencia

function func_transferencia()

H = tf([2 1], [1 3 2])
pzmap(H)
grid

end