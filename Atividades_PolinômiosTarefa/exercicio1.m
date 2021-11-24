% ATIVIDADES - POLINÔMIOS E SISTEMAS DE EQUAÇÕES LINEARES
% POLINÔMIOS
% 1. Obtenha a raiz de cada polinômio

% Para executar esta função no terminal:
% [output_raizA, output_raizB, output_raizC, output_raizD] = exercicio1

function [output_raizA, output_raizB, output_raizC, output_raizD] = raiz_polinomio()

polinomioA = [1 1 -6];
raizA = roots(polinomioA);
output_raizA = raizA;

polinomioB = [1 3 -5 8];
raizB = roots(polinomioB);
output_raizB = raizB;

polinomioC = [1 3 13 52 -6];
raizC = roots(polinomioC);
output_raizC = raizC;

polinomioD = [1 2 8 3  2 -7];
raizD = roots(polinomioD);
output_raizD = raizD;

end