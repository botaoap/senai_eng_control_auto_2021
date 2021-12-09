% Dado o filtro RL abaixo e sua FT determine a resposta do degrau unitario
% usando step() e lsim()

%           R
%     --| --/\/\/\----     ---
%     |              |      |
% V -----            //     |
%    ---             \\ L   | VL
%     |              |      |
%     ----------------     ---

% R = 10 ohms
% L = 10 mH

% FT(s) = (V_L(s))/(V(s)) = ((L/R)s)/(1+(L/R)s)

function func_transferencia()

R = 10
L = 10e-3

H = tf([L/R 0] , [L/R 1])
step(H)

% Valores 1, 1, 0.001: é os pontos e o passo para poder formar a onda
% quadrada
[u, t] = gensig('square', 1, 1, 0.001);
lsim(H, u, t)
axis([0 1 -0.2 1.2])
grid

end