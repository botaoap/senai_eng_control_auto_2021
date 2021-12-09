% Dada a seguinde função de transferencia

% H(s) = (2s^3 + 5s^2 + 3s + 6)/(s^3 + 6s^2 + 11s + 6)

function func_transferencia()

H = tf([2 5 3 6], [1 6 11 6]);

num = [2 5 3 6];
den = [1 6 11 6];

[r,p,k] = residue(num, den)

end