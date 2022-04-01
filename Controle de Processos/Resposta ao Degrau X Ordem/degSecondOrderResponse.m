%usar sisotool para verificar os graficos gerados
% P,C,G,H
% MD, MA, FTMF, FTMFs
%FUNÇÃO DE TRANSFERENCIA DE SEGUNDA ORDEM%
while(true)
    clc
    disp '**********************************************'
    disp '*  FUNÇÃO DE TRANSFERENCIA DE SEGUNDA ORDEM  *'
    disp '**********************************************'
   switch lower(input('DIGITE O Nº DO EXERCICIO 1-8 OU 9 PARA SAIR: '))
       case {1}
            disp '*******************'
            disp '*** exercicio 1 ***'
            disp '*******************'
            P = 1;
            C = tf(2,[1 25]);
            G = tf(15,[1 0.05]);
            H = tf(3);
            step = 5;
            FTMFs = tf(0.32876, [0.0109 0.274 1])
            funTransferCloseMesh(P, C, G, H, FTMFs, step, true)
            clear
            input('press enter to continue')
            continue
       case {2}
            disp '*******************'
            disp '*** exercicio 2 ***'
            disp '*******************'
            P = 1;
            C = tf(3,[1 2]);
            G = tf(15,[1 0.5]);
            H = tf(1.2);
            step = 5;
            FTMFs = tf(0.8181, [0.01818 0.04545 1])
            funTransferCloseMesh(P, C, G, H, FTMFs, step, true)
            clear
            input('press enter to continue')
            continue
       case {3}
            disp '*******************'
            disp '*** exercicio 3 ***'
            disp '*******************'
            P = 1;
            C = tf(4,[1 2]);
            G = tf(0.8,[1 0.5]);
            H = tf(3);
            step = 5;
            FTMFs = 1
            funTransferCloseMesh(P, C, G, H, FTMFs, step, false)
            clear
            input('press enter to continue')
            continue
       case {4}
            disp '*******************'
            disp '*** exercicio 4 ***'
            disp '*******************'
            P = 1;
            C = tf([1 3],[1 5 6]);
            G = tf(3,[3 9]);
            H = tf(3.5);
            step = 5;
            FTMFs = 1
            funTransferCloseMesh(P, C, G, H, FTMFs, step, false)
            clear
            input('press enter to continue')
            continue
       case {5}
            disp '*******************'
            disp '*** exercicio 5 ***'
            disp '*******************'
            P = tf(0.4,[0.2 0.15]);
            C = tf(1);
            G = tf(0.2,[1 0.2]);
            H = tf(0.1);
            step = 5;
            FTMFs = 1
            funTransferCloseMesh(P, C, G, H, FTMFs, step, false)
            clear
            input('press enter to continue')
            continue
       case {6}
            disp '*******************'
            disp '*** exercicio 6 ***'
            disp '*******************'
            P = tf(1);
            C = tf([1 2],[1 1]);
            aux1 = tf([1 2], 1)
            aux2 = tf([1 3], 1)
            auxT = aux1*aux2
            G = tf(3/auxT,1)
            H = tf(5);
            step = 3;
            FTMFs = 1
            funTransferCloseMesh(P, C, G, H, FTMFs, step, false)
            clear
            input('press enter to continue')
            continue
       case {7}
            disp '*******************'
            disp '*** exercicio 7 ***'
            disp '*******************'
            P = tf(10);
            C = tf(2,[1 1]);
            G = tf(1,[1 2]);
            H = tf(1.2);
            scala = 5;
            FTMFs = tf(0.7692,[0.0384 0.1153 1])
            funTransferCloseMesh(P, C, G, H, FTMFs, scala, true)
            clear
            input('press enter to continue')
            continue
       case {8}
            disp '*******************'
            disp '*** exercicio 8 ***'
            disp '*******************'
            P = tf(1);
            C = tf(2,[1 1]);
            G = tf(13,[1 8]);
            H = tf(0.8);
            step = 4;
            FTMFs = 1
            funTransferCloseMesh(P, C, G, H, FTMFs, step, false)
            clear
            input('press enter to continue')
            continue
       case {9}
            disp 'Saiu.'
            break;
       otherwise 
        disp 'Escolha errada'
        pause(1);
        continue
   end
end

function funTransferCloseMesh(P, C, G, H, FTMFs, step, boolTwWGraph)
    MD = (P*C*G);
    MA = (1 + (P*C*G*H));
    FTMF = MD/MA
    if (boolTwWGraph == false)
        stepplot(step*FTMF)
    else
        stepplot(step*FTMF, step*FTMFs)
    end
end

%escrever sisotool on commando line%




