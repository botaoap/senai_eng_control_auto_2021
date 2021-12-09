% Escreva no Matlab o script correspondente a função de transferecia
% abaixo:

% H(s) = (4+4s^4+3s+1s^2)/(5s~2+9)

function func_transferencia()

tf([4 0  1 3 4], [5 0 9])

end