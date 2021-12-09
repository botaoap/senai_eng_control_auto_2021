% A função td2zp() converte a forma numerador-denominador para a forma de
% polos e zeros

function func_transferencia()

num = [2 1];
den = [1 3 2];
[z,p,k] = tf2zp(num,den)

end