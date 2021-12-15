% Em algumas ocasiões é interessante que as escalas dos eixos sejam 
% represen- tadas em escala logarítmica (ao invés da escala linear padrão). 
% Nestes casos, é possível usar as funções semilogx, semilogy ou loglog, 
% que alteram, respec- tivamente, a escala do eixo x, do eixo y e de ambos. 
% Normalmente os valores que compõem tais gráficos também são gerados com 
% espaçamentos logarítmicos, via função logspace.
% A função plot pode trabalhar com várias duplas de vetores, sobrepondo 
% mais de um gráfico em uma mesma janela. O resultado da seqüência de 
% comandos a seguir está representado naFigura 5.

function dois_graficos()

x = -1:0.1:1; %Criavetor'x':valoresentre1e-1espacadosde0.1 
y = x.^2; %Calculay
z = x.^3; %CalculaZ
plot(x,y,'r*',x,z,'b:') %Tracaosdoisgraficos-xvsyexvsz 
xlabel('Valorde x') %Nomeiaoeixox 
ylabel('yez') %Nomeiaoeixoy
title('Graficossobrepostos')%Atribuiumtituloaografico 
grid%Ativaaslinhasdegradedajanela



end