% A função residue() calcula a expnasão em frações parciais

function func_transferencia()

num = [2 1];
den = [1 3 2];

[r,p,k] = residue(num, den)

end

% Reposta:
% r = 3, -1
% p = -2, -1
% k = []