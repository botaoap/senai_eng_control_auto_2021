% O comando subplot(nl,nc,ng) pode ser usado para plotar mais de um gráfico 
% na mesma janela; nl, nc são, respectivamente, o número de linhas e o 
% número de colunas de gráficos; e ng é o número do gráfico em questão. 
% Por exemplo, a sequência de comandos abaixo gera aFigura 6

function func_subplot()

K = [1:100].^2;
Y = K.^(-0.4);
subplot(3,1,1);
plot(K, Y); 
grid on
subplot(3,1,2); 
semilogx(K, Y); 
grid on 
subplot(3,1,3);
loglog(K, Y);
grid on

end