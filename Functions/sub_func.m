%BASKARA.M-Exemplodeusodeumasubfuncaopara
%calculoderaizesdeequacaodo2ograu
%Funcaoprimaria:mesmonomequeodoarquivo.M 

function x = Baskara(v)
a = v(1); 
b = v(2); 
c = v(3); %Obtemcoeficientes
D = Delta(a,b,c); %Calcula"∆"

%Calcularaizesreais,se existirem 
if isreal(D)
    r1 = (-b+D)/(2*a); %Calcularaiz
    r2 = (-b-D)/(2*a); %Calcularaiz 
    if r1 == r2
        x = r1; %Retornaapenasumaraiz 
    else
        x = [r1; r2]; %Retornaraizesdistintas
    end
else
    disp('A equacao na opossui raizes reais'); 
    x = []; %Retornonulo
end

%Subfuncaoparacalculode"∆" 
function d = Delta(a,b,c)
d = sqrt(b^2-4*a*c);