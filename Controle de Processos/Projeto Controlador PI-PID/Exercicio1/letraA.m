% a)	Especificar o ganho proporcional para uma redução do erro para 15.%
%(Resposta: KP=8.08)%

R = 10;                     % Degrau
Kp = 1;                     % Ganho unitário controlador
Kh = 2;                     % Ganho do sensor
Kg = 2;                     % Ganho da planta
Tal_G = 0.5;                % Constante de tempo da planta
G = tf([Kg],[Tal_G 1]);     % Função de transferencia da planta
%step(R*G)                   % Plota a resposta ao degrau. com amplitude
disp ('ERRO com Kp = 1')    % Escreve na Janela de comando
E = R/(1+Kg*Kp*Kh)          % Erro com Kp unitário
Ep = 0.15*E;                % Definição do novo erro
Kp_p=((R/Ep)-1)/(Kg*Kh);    % Calculo do novo ganho proporcional
% FTMF
Num = [Kp_p*Kg];            % Numerador da F.T. em Malha Fechada
Den=[Tal_G Kp_p*Kh*Kg+1];   % Deniminador da F.T. em Malha Fechada
FTMF = tf(Num,Den)          % Função de Transferencia em Malha Fechada
step(R*G,'r--',R*FTMF,'b')  % Plota a respota ao degrau da FTMF
legend('Planta','FTMF','Location','SouthEast')
grid
