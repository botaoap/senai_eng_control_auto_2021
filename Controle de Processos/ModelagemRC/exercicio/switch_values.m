while(true)
    clc 
    switch lower(input('ENTRE COM O NUMERO DO EXERCICIO 1-7 ou 8 para sair: '))
        case {1}
            clc
            disp '***************************'
            disp '* FUNÇÃO DE TRANSFERENCIA *'
            disp '***************************'
            disp '* 1 -> R C *'
            C = 0.000047;
            R = 1000;
            tal = R*C;
            num = [1];
            den = [tal 1];
            G=tf(num, den)

            stepplot(G)
            % bode(G);
            grid
            input('press enter to continue')
            continue
        case {2}
            R = 1000;
            L = 0.5;
            
            num = [1];
            den = [L/R 1];
            
            FT = tf(num, den)
            
            stepplot(FT)
            disp 'R = 1000;'
            disp 'L = 0.5;'
            input('press enter to continue')
            continue
        case {3}
            R = 1000;
            L = 0.5;
            
            num = [1];
            den = [R/L 1];
            
            FT = tf(num, den)
            
            stepplot(FT)
            grid
            disp 'R = 1000;'
            disp 'L = 0.5;'
            input('press enter to continue')
            continue
        case {4}
            R = 1000;
            L = 0.5;
            C = 0.000047;
            
            num = [R*C 0];
            den = [L*C R*C 1];
            
            FT = tf(num, den)
            
            stepplot(FT)
            grid
            disp 'R = 1000;'
            disp 'L = 0.5;'
            disp 'C = 0.000047;'
            input('press enter to continue')
            continue
        case {5}
            R1 = 2200;
            R2 = 1000;
            C = 0.000047;
            
            num = [R1*R2*C R2];
            den = [0 R1*R2*C  R1+R2];
            
            FT = tf(num, den)
            
            stepplot(FT)
            grid
            disp 'R1 = 2200;'
            disp 'R2 = 1000;'
            disp 'C = 0.000047;'
            input('press enter to continue')
            continue
        case {6}
            R = 1000;
            L1 = 0.5;
            L2 = 2;
            
            num = [L2*L1 L2*R 0];
            den = [L2*L1 R*(L1+L2) 0];
            
            FT = tf(num, den)
            
            stepplot(FT)
            grid
            disp 'R = 1000;'
            disp 'L1 = 0.5;'
            disp 'L2 = 2;'
            input('press enter to continue')
            continue
        case {7}
            disp '* VALOR DOS COMPONENTES *'
            C = 0.000047;
            R = 1000;
            L = 0.5;
            R1 = 2200;
            R2 = 1000;
            L1 = 0.5;
            L2 = 2;
            disp 'C = 0.000047;'
            disp 'R = 1000;'
            disp 'L = 0.5;'
            disp 'R1 = 2200;'
            disp 'R2 = 1000;'
            disp 'L1 = 0.5;'
            disp 'L2 = 2;'
            input('press enter to continue')
            continue
        case {8}
            disp 'Saiu.'
            break;
        otherwise 
            disp 'Escolha errada'
            pause(1);
            continue
    end
end