clear all
clc
%% Entrada e saida
entrada = input("Insira o nome da sua cidade: ",'s')
disp(entrada)
fprintf("Cidade escolhida: %s\n", entrada)
%% if, elseif e else
x = 7;
if x > 10
    fprintf("Maior que 10.\n");
elseif x == 10
    fprintf("Igual a 10.\n");
else
    fprintf("Menor que 10.\n");
end
%% for
for i=1:5
    disp(i*3)
end
%% while
x = 0;
i = 0;

while i < 5
    x = x + 1
    i = i + 1
end
%% switch
opcao = 2;
switch opcao
    case 1
        disp("Opcao A")
    case 2
        disp("Opcao B")
    case 3
        disp("Opcao C")
    otherwise
        disp("Opcao invalida")
end

funcao_triplo(67)