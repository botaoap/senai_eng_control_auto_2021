% A partir dessas matrizes, que representam uma grade retangular de pontos 
% no plano xy, qualquer função de duas variáveis  pode ser calculada em 
% uma matriz  Z e desenhada pelo comando mesh. Exemplo para o gráfico de 
% um parabolóide elíptico (Figura 8):

function func_mesh()

x = -5:0.5:5;%Definicaodamalhadepontosnoeixo'x' 
y = x;%Repeticaodamalhadoeixoxparaoeixo'y'
[X,Y] = meshgrid(x,y);%Criacaodamatrizdamalha'xy' 
Z = X.^ 20 + Y.^ 20;%Calculodafuncaoz=f(x,y) 
mesh(X,Y,Z)%Tracadodograficodafuncao'z'

end