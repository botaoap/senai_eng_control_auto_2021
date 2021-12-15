% Para que os gráficos sejam plotados no mesmo gráfico, mas um por um, 
% usa-se a sequência de comandos hold on e pause,

function func_pause()

x=linspace(0,2*pi,100); 
y=sin(x); 
z=0.5*sin(3*x); 
plot(x,y,'r*')
pause%pausaateserpressionadaumatecla
hold on%Mantemograficoatual 
plot(x,z,'b:')
pause 
close

end