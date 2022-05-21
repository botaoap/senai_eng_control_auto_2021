% 2)Dado os diagramas de blocos abaixo, determine os ganhos dos 
% controladores Proporcional e Integral, com as especificações que 
% acompanham cada diagrama:

% a)Especificar os ganhos para que o sistema passe a ter uma constante de tempo em 50ms. 
% (Resposta: KP=3.3 / KI=26.6)

R = 10;
Kh = 1.5;
Kg = 0.5;
Tal_G = 1/8;
Tal_MF = 0.05; % vem do enunciado
Tal_I = Tal_G;
Kp = (Tal_G/(Tal_MF*Kg*Kh))
Ki = Kp/Tal_I

FTMF = tf([1/Kh],[Tal_MF 1])