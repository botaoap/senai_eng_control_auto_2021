% Gere um sistema com a seguinte função
% H(s) = (2s^2+3s)/(s^2+(1/sqrt(2))s+1/4)
% H(s) = (2(s-0)(s-(-3/2)))/((s-(-1/2sqrt(2)(1-j))((s-(-1/2sqrt(2))(1+j))

% Encontre os zeros, polos e ganho do sistema. Use "eqtflength" para
% garantir que o numerador e o denominador tenham o mesmo comprimento.

function func_transferencia()

b = [2 3];
a = [1 1/sqrt(2) 1/4];

[b,a] = eqtflength(b,a);
[z,p,k] = tf2zp(b,a)

% Trace os polos e zeros para verificar se eles estao nos locais esperados

fvtool(b,a,'polezero')
text(real(z)+.1,imag(z), 'Zero')
text(real(p)+.1,imag(p), 'Pole')

end