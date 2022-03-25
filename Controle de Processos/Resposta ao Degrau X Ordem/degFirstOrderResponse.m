% (Y/R) = (C*G)/(1+C*G*H)

%FUNÇÃO DE TRANSFERENCIA DE PRIMEIRA ORDEM%

while(true)
    clc 
    switch lower(input('ENTRE COM O NUMERO DO EXERCICIO 1-3 ou 4 para sair: '))
        case {1}
            %Questao 1%
            clc
            disp '*********************************************'
            disp '* FUNÇÃO DE TRANSFERENCIA DE PRIMEIRA ORDEM *'
            disp '*********************************************'
            C = 3;
            G = tf(4,[1 2]);
            H = 2;
            FTMF2 = tf(12/26, [1/26 1]);
            degFirstOrder(C,G,H,FTMF2,10)
            clear
            input('press enter to continue')
            continue
        case {2}
            %Questao 2%
            clc
            disp '*********************************************'
            disp '* FUNÇÃO DE TRANSFERENCIA DE PRIMEIRA ORDEM *'
            disp '*********************************************'
            C = tf(2,[1 0]);
            G = 5;
            H = 4;
            FTMF2 = tf(0.25, [0.025 1]);
            degFirstOrder(C,G,H,FTMF2, 3)
            clear
            input('press enter to continue')
            continue
        case {3}
            %Questao 3%
            clc
            disp '*********************************************'
            disp '* FUNÇÃO DE TRANSFERENCIA DE PRIMEIRA ORDEM *'
            disp '*********************************************'
            C = tf([1 1], [2 3]);
            G = tf(2, [4 4]);
            H = 4;
            FTMF2 = tf(0.1, [0.4 1]);
            degFirstOrder(C,G,H,FTMF2, 5)
            clear
            input('press enter to continue')
            continue
        case {4}
            disp 'Saiu.'
            break;
        otherwise 
            disp 'Escolha errada'
            pause(1);
            continue
    end
end

function degFirstOrder(C, G, H, resultFound, scala)
    
    FTMF = (C*G)/(1+C*G*H)
    FTMF2 = resultFound
    stepplot(scala*FTMF, scala*FTMF2)
end