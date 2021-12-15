% A maneira mais simples de traçar um gráfico xy é pelo uso da função plot. 
% A forma plot(x,y) desenha um gráfico bidimensional dos pontos do vetor y 
% em relação aos pontos do vetor x, sendo que ambos devem  ter o mesmo 
% número de elementos. 
% O gráfico resultante é desenhado em uma janela de figura com as escalas 
% automáticas nos eixos x e y e segmentos de reta unindo os pontos. 
% Por exemplo, para desenhar o gráfico da função:

function func_plot()

x = 0:0.1:10;
y = 1 - 1.1547*exp(-1.5*x).*sin(2.5981*x+1.0472);
plot(x,y)

end