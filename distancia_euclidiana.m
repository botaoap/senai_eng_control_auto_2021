function [ d ] = distancia(x1, x2, y1, y2)
% Distancia Euclidiana entre dois pontos
% Ponto 1 = (x1, x2)
x = (x1 - x2)^2;

% Ponto 2 = (y1, y2)
y = (y1 - y2)^2;

% Juntando as variaveis temos a formula da distancia
d = (abs(x + y))^(1/2);

end