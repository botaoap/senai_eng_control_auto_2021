% Crie um sinal senoidal de 20 Hz amostrado a uma frequΓͺncia de 240 Hz. Adicione a
% esse sinal um ruΓ­do de 60 Hz, tambΓ©m senoidal. Esboce os sinais gerados.

% Sinal senoidal de 20 Hz:
% π₯ = π ππ(2 β pi β π β π‘)
% π₯ = π ππ(2 β pi β 20 β π‘)
% FrequΓͺncia de amostragem:
% fs = 240 Hz
% Sinal de ruΓ­do de 60 Hz:
% π = 2 * π ππ(2 β pi β π β π‘)
% π = 2 * π ππ(2 β pi β 60 β π‘)
% Sinal com ruΓ­do:
% π¦ = π₯ + π
% π¦ = π ππ(2 β pi β 20 β π‘) + π ππ(2 β pi β 60 β π‘)

A = 1; % Amplitude do Sinal 1V
fs = 240; % frequencia de 240Hz
Ts = (1/fs); % perΓ­odo de amostragem
t = 0:Ts:3; % tempo de duraΓ§Γ£o do sinal
x = A*sin(2*pi*20*t); % Sinal senoidal de 20 Hz:
r = A*sin(2*pi*60*t); % Sinal de ruΓ­do de 60 Hz:
y = x + r; % Sinal com ruΓ­do:


subplot(3,1,1);
plot(t,x,'r')
subplot(3,1,2);
plot(t,r,'g')
subplot(3,1,3);
plot(t,y,'b')
