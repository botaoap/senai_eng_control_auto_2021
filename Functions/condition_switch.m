
function condition_switch(angulo)
switch angulo
    case{0,360}
        disp('Norte') 
    case{-180,180}
        disp('Sul')
    case{-270,90}
        disp('Leste')
    case{-90,270}
        disp('Oeste') 
    otherwise
        disp('Direcao desconhecida')
end
end