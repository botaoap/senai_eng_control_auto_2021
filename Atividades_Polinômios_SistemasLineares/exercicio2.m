% ATIVIDADES - POLINÔMIOS E SISTEMAS DE EQUAÇÕES LINEARES
% SISTEMAS DE EQUAÇÕES LINEARES

% Resolva, se possível, os sequintes sistemas lineares

function sistema_linear()

polinomioA = [1 4 7];
resultPolinomioA = 5;

polinomioB = [-3 0 -9];
resultPolinomioB = 1;

polinomioC = [2 5 11];
resultPolinomioC = -2;

% Gerando os valores do sistema linear
% formula: Ax = b
A = [polinomioA; polinomioB; polinomioC];
b = [resultPolinomioA; resultPolinomioB; resultPolinomioC];

x = inv(A) * b

end