% Gerar um sinal senoidal, com frequência de 5 Hz, amplitude de 2 V por 3 segundos.
% Considere uma amostragem a uma taxa de 60 Hz.

% 𝑠 = 𝐴. 𝑠𝑒𝑛(2pi𝑓𝑡)
% 𝐴 = 2 𝑉
% 𝑓 = 5 𝐻𝑧
% 𝑠 = 2. 𝑠𝑒𝑛(2pi5𝑡)
% 𝑡 = 𝑡𝑒𝑚𝑝𝑜 𝑑𝑒 𝑑𝑢𝑟𝑎çã𝑜 𝑑𝑜 𝑠𝑖𝑛𝑎𝑙 = 3 𝑠
% Considere uma amostragem a uma taxa de 60 Hz:
% 𝑓𝑠 = 60 𝐻𝑧
% 𝑇𝑠 = 1 / 𝑓s = (1/60)s

A = 2; % Amplitude do Sinal 2V
f = 5; % frequencia 5 hz
fs = 60; % frequência de amostragem
Ts = (1/fs); % período de amostragem
t = 0:Ts:3; % tempo de duração do sinal
x=A*sin(2*pi*f*t); % sinal senoidal de frequência 60 Hz
plot(t,x)% plotando os sinais