% A função mesh cria uma malha tridimensional em que cada ponto é unido por 
% segmentos de reta aos vizinhos na malha. Usando a função surf é possível 
% gerar um gráfico de superfície em que os espaços entre os segmentos são 
% coloridos, con- forme o mapa de cores definido pela função colormap. 
% O código hsv da listagem abaixo refere-se a um dos mapas de cores 
% disponíveis no MATLAB apresentados naTabela  11.

function func_surf()

[X,Y] = meshgrid(-8:.5:8);
R = sqrt(X.^2 + Y.^2) + eps; Z = sin(R)./R;
surf(X,Y,Z)
colormap hsv %defineomapadecores
colorbar %paracolocarabarradecores

end