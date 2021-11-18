% Fazer uma função que calcule a média dos valores
function [output_media] = avg_data()
% Escolhe quantos numero será calculado
qtd_numero = input("Digite quantos numeros deseja: ");
cont = 0;
soma = 0;

% Loop for para rodar todos os valores
for index = 1:qtd_numero
   valor = input("Valor " + index + ": ");
   soma = soma + valor;
   cont = cont + 1;
end

% Calcula a media dos valores inseridos
output_media = soma / cont;

end