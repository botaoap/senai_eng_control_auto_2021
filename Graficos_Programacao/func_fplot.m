% O resultado, apresentado naFigura 4, é exibido em uma janela de figura 
% identi- ficada por um número. O mesmo resultado é obtido com a função 
% fplot, basta identificar a string a ser representada no domínio do gráfico

function func_fplot()

y = '1 - 1.1547*exp(-1.5*x).*sin(2.5981*x+1.0472)';
fplot(y,[0 10])
end