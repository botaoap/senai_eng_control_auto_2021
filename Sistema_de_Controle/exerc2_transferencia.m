% Dado o filtro RC abaixo, determine sua função de transferencia. Em
% seguida, apresente a resposta ao degrau do sistema utilizando as 
% funções step() e lsim(). Estime o valor do tempo de subida e compare com
% o valor obtido a partir da função stepinfo(). Utilize R=10Kohms e
% C=10 micro fahrenheits
%               R
% Input 0----/\/\/\--0----0 Output
%                    |
%                    _
%                    - C
%                    |
%                    |
%                   ---
%                    --
%                     -

% v_in(t) = R * i(t) + v_out(t)
% v_in(t) = = R * C(dv_out(t))/dt + v_out(t)
% v_in(s) = RCs * v_out(s) + v_out(s)
% v_in(s) = v_out(s)*(RCs + 1)
% (v_out(s))/(v_in(s)) = 1 / (RCs + 1)

function func_transferencia()

R = 10e3;
C = 10e-6;
H = tf([1], [R*C 1]);
step(H)
grid

% Utilizando o lsim()
[u, t] = gensig('square', 1, 1, 0.001);
lsim(H, u, t)
axis([0 1 -0.2 1.2])
grid

end