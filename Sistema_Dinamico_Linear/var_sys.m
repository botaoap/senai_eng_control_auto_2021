% Pode ser armazenado em uma variável tipo sys no MATLAB pela seguinte
% sequenia de comandos
% Essa solucao pod eser calculada de forma direta pelo MATLAB por qual uma
% das instrucoes:

% Continuous-time state-space model.

function var_sys()

A = [0 1; -3 -2]
B = [0; 3]
C = [1 0]
D = [0]

sys = ss(A,B,C,D)

end