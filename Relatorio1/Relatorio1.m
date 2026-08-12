%% Exercício 1
v1 = input('Digite o primeiro valor: ');
v2 = input('Digite o segundo valor: ');
v3 = input('Digite o terceiro valor: ');

medicoes = [v1, v2, v3];

m = mean(medicoes);
maior_val = max(medicoes);
menor_val = min(medicoes);

disp(m);
fprintf('Maior valor: %f\n', maior_val);
fprintf('Menor valor: %f\n', menor_val);

if m >= 8
    disp('Resultado alto');
elseif m >= 5
    disp('Resultado intermediário');
else
    disp('Resultado baixo');
end

fprintf('Média: %.2f\n', m);

%% Exercício 2
A2 = [3 8 2 10 5 7 1 6];
B2 = zeros(size(A2));

for i = 1:length(A2)
    if A2(i) >= 6
        B2(i) = 2 * A2(i);
    else
        B2(i) = A2(i) + 3;
    end
end

disp('Vetor A:');
disp(A2);
disp('Vetor B:');
disp(B2);
fprintf('Soma dos elementos de B: %f\n', sum(B2));
fprintf('Média dos elementos de B: %f\n', mean(B2));
fprintf('Maior valor de B: %f\n', max(B2));
fprintf('Menor valor de B: %f\n', min(B2));

%% Exercício 3
A3 = [14 7 20 9 6 11 18 5];
B3 = zeros(size(A3));
qtd_pares = 0;

for i = 1:length(A3)
    if rem(A3(i), 2) == 0
        B3(i) = A3(i);
        qtd_pares = qtd_pares + 1;
    end
end

disp('Vetor B:');
disp(B3);
fprintf('Quantidade de números pares: %d\n', qtd_pares);

%% Exercício 4
n1_ex4 = input('Digite o primeiro valor: ');
n2_ex4 = input('Digite o segundo valor: ');

fprintf('1 - Soma\n2 - Subtração\n3 - Multiplicação\n4 - Divisão\n');
opcao_ex4 = input('Escolha uma opção: ');

switch opcao_ex4
    case 1
        fprintf('Resultado da soma: %f\n', n1_ex4 + n2_ex4);
    case 2
        fprintf('Resultado da subtração: %f\n', n1_ex4 - n2_ex4);
    case 3
        fprintf('Resultado da multiplicação: %f\n', n1_ex4 * n2_ex4);
    case 4
        if n2_ex4 == 0
            disp('A operação não pode ser realizada');
        else
            fprintf('Resultado da divisão: %f\n', n1_ex4 / n2_ex4);
        end
    otherwise
        disp('Opção inválida');
end

%% Exercício 5
soma_ex5 = 0;
contador_ex5 = 0;

while soma_ex5 <= 4
    val_rand = rand();
    soma_ex5 = soma_ex5 + val_rand;
    contador_ex5 = contador_ex5 + 1;
    fprintf('Valor sorteado: %f | Soma atual: %f\n', val_rand, soma_ex5);
end

if contador_ex5 > 8
    disp('Muitas repetições');
else
    disp('Poucas repetições');
end

fprintf('Total de repetições: %d\n', contador_ex5);

%% Exercício 6
A6 = [2 7 4 9; 6 1 8 3];
B6 = zeros(size(A6));
[linhas6, colunas6] = size(A6);

for j = 1:linhas6
    for i = 1:colunas6
        if A6(j,i) > 5
            B6(j,i) = 2 * A6(j,i);
        else
            B6(j,i) = A6(j,i) + 5;
        end
    end
end

disp('Matriz A:');
disp(A6);
disp('Matriz B:');
disp(B6);
disp('Transposta de B:');
disp(B6');
disp('Primeira linha de B:');
disp(B6(1, :));
disp('Terceira coluna de B:');
disp(B6(:, 3));

%% Exercício 7
A7 = [5 12 7 3 9 14];
[soma7, media7] = analisa_vetor(A7);

if media7 >= 8
    disp('Média elevada');
else
    disp('Média abaixo de 8');
end

fprintf('Soma: %f\n', soma7);
fprintf('Média: %.2f\n', media7);

%% Exercício 8
A8 = [1 5 3 8; 6 2 7 4];
B8 = zeros(size(A8));
B8 = transforma_matriz(A8, B8);
disp('Matriz B resultante:');
disp(B8);

%% Exercício 9
str1 = input('Digite o primeiro valor: ', 's');
str2 = input('Digite o segundo valor: ', 's');

disp('Texto 1 inserido:');
disp(str1);
disp('Texto 2 inserido:');
disp(str2);

num1 = str2num(str1);
num2 = str2num(str2);

soma9 = num1 + num2;
mult9 = num1 * num2;

fprintf('Soma: %f\n', soma9);
fprintf('Multiplicação: %f\n', mult9);

if soma9 > 20
    disp('Soma alta');
elseif soma9 == 20
    disp('Soma igual a 20');
else
    disp('Soma baixa');
end

%% Exercício 10
dados = [12 18 10 25 15];

fprintf('Soma dos valores: %f\n', sum(dados));
fprintf('Média dos valores: %f\n', mean(dados));
fprintf('Maior valor: %f\n', max(dados));
fprintf('Menor valor: %f\n', min(dados));

media_dados = mean(dados);
qtd_maior_media = 0;

for i = 1:length(dados)
    if dados(i) >= media_dados
        qtd_maior_media = qtd_maior_media + 1;
    end
end

fprintf('1 - Gráfico de barras\n2 - Gráfico de pizza\n');
opcao_g = input('Escolha uma opção de gráfico: ');

switch opcao_g
    case 1
        bar(dados);
        title('Gráfico de Barras');
    case 2
        pie3(dados);
        title('Gráfico de Pizza 3D');
    otherwise
        warning('Nenhum gráfico foi criado.');
end

if qtd_maior_media > length(dados) / 2
    disp('Maioria dos valores acima ou igual à média');
else
    disp('Menos da metade dos valores acima ou igual à média');
end
