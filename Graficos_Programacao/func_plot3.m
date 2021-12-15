% Gráficos em três dimensões podem ser traçados pelo MATLAB com a mesma 
% facilidade que os bidimensionais. A função plot3 funciona de forma 
% semelhante à função plot para o traçado de gráficos de linha em 3D. 
% Por exemplo, a sequência de comandos a seguir produz um gráfico de uma 
% hélice tridimensional. Note o uso da função zlabel para nomear o eixo z 
% do gráfico. O resultado está repre- sentado naFigura 7.

function func_plot3()

t = linspace(0,6*pi,100); 
plot3(sin(t),cos(t),t);
xlabel('seno(t)');
ylabel('cosseno(t)'); 
zlabel('z=t'); 
title('Graficodehelice'); 
grid on;

end