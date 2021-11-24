% ATIVIDADES - POLINÔMIOS E SISTEMAS DE EQUAÇÕES LINEARES
% SISTEMAS DE EQUAÇÕES LINEARES

% Resolva, se possível, os sequintes sistemas lineares

function sistema_linear()

polinomioA = [3 -2 1];
resultPolinomioA = -4;

polinomioB = [0 2 -1];
resultPolinomioB = 7;

polinomioC = [4 1 2];
resultPolinomioC = 0;

% Gerando os valores do sistema linear
% formula: Ax = b
A = [polinomioA; polinomioB; polinomioC];
b = [resultPolinomioA; resultPolinomioB; resultPolinomioC];

x = inv(A) * b

end