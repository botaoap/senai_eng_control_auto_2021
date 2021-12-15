% Outra função utilizada para confeccionar gráficos bidimensionais é a 
% função ezplot. Esta função também tem como argumentos de entrada uma 
% função string e um intervalo de variação. Se f = f(x, y), o comando 
% ezplot representa a função considerando f(x, y) = 0,

function func_ezplot()

ezplot('x^2-3*y^2+2*x*y',[0 100])

end