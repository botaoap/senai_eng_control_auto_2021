function calc_tal(R,C)
    clc
    disp '***************************'
    disp '* FUNÇÃO DE TRANSFERENCIA *'
    disp '***************************'
    tal = R*C
    num = [1];
    den = [tal 1];
    G=tf(num, den)
    
    stepplot(G)
    % bode(G);
    grid
end