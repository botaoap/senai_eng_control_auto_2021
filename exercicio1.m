% Gerar um sinal senoidal, com frequΓͺncia de 5 Hz, amplitude de 2 V por 3 segundos.
% Considere uma amostragem a uma taxa de 60 Hz.

% π  = π΄. π ππ(2piππ‘)
% π΄ = 2 π
% π = 5 π»π§
% π  = 2. π ππ(2pi5π‘)
% π‘ = π‘ππππ ππ ππ’ππΓ§Γ£π ππ π ππππ = 3 π 
% Considere uma amostragem a uma taxa de 60 Hz:
% ππ  = 60 π»π§
% ππ  = 1 / πs = (1/60)s

A = 2; % Amplitude do Sinal 2V
f = 5; % frequencia 5 hz
fs = 60; % frequΓͺncia de amostragem
Ts = (1/fs); % perΓ­odo de amostragem
t = 0:Ts:3; % tempo de duraΓ§Γ£o do sinal
x=A*sin(2*pi*f*t); % sinal senoidal de frequΓͺncia 60 Hz
plot(t,x)% plotando os sinais