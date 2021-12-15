% O MATLAB também pode construir gráficos de superfícies a partir de um 
% conjunto de coordenadas tridimensionais xyz. Inicialmente, é preciso 
% gerar matrizes X e Y com, respectivamente, linhas e colunas preenchidas 
% com os valores das variáveis x e y. Isto pode ser feito diretamente pela 
% função meshgrid (omita o <; >
% das duas últimas linhas de comando para entender a lógica da função),

function func_meshgrid()

x = linspace(0,2,3);%Geracaodevalorespara'x'e'y', 
y = linspace(3,5,2);%amboscomamesmadimensao!
[X,Y] = meshgrid(x,y)%Criacaodamatrizdamalha'xy' 
z=X.*Y

end