% ATIVIDADES - POLINÔMIOS E SISTEMAS DE EQUAÇÕES LINEARES
% POLINÔMIOS

% Divisao de dois polinomios
% quando x = 2

function divisao_polinomio(x)

polinomioA = [6 4 0 -5];
polinomioB = [12 -7 3 9];

% Quociente é o resultado da divisao logo as duas contas tem o mesmo
% resultado
% divisao = polyval(polinomioA, x)/polyval(polinomioB, x)

[quociente, resto] = deconv(polyval(polinomioA, x),polyval(polinomioB, x))

end