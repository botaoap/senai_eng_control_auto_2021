% ATIVIDADES - POLINÔMIOS E SISTEMAS DE EQUAÇÕES LINEARES
% SISTEMAS DE EQUAÇÕES LINEARES

% Resolva, se possível, os sequintes sistemas lineares

function sistema_linear()

polinomioA = [1 2];
resultPolinomioA = -4;

polinomioB = [3 6];
resultPolinomioB = 5;

% Gerando os valores do sistema linear
% formula: Ax = b
A = [polinomioA; polinomioB];
b = [resultPolinomioA; resultPolinomioB];

x = inv(A) * b

end