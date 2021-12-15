% Outra forma de se obter gráficos sobrepostos é com o uso da função hold, 
% que faz com que todos os resultados gráficos subsequentes ao seu uso 
% sejam desenhados em uma mesma janela de figura. 
% Exemplo (considerando as variáveis do exemplo anterior):

function func_hold()

x = -1:0.1:1; %Criavetor'x':valoresentre1e-1espacadosde0.1 
y = x.^2; %Calculay
z = x.^3; %CalculaZ

plot(x,y);%Desenhaograficodeumafuncao
hold on%Ativaa'trava'deexibicaografica 
plot(x,z);%Desenhaoutrograficonamesmajaneladefigura 
hold off%Desativaa'trava'deexibicaografica

end