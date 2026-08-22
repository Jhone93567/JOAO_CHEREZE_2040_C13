%% Questao 1
t = 0:0.1:10;

y1 = 2 * sin(3 * t);
y2 = 2 * cos(3 * t);

figure;
plot(t, y1, 'b-', t, y2, 'r--');
xlabel('Tempo (s)');
ylabel('Amplitude');
title('Senoide e Cossenoide');
legend('Senoide', 'Cossenoide');
grid on;

num_elementos = length(t);
disp(['Quantidade de elementos do vetor de tempo: ', num2str(num_elementos)]);

%% Questao 2
a = input('Digite o valor do coeficiente a: ');

if a > 0
    disp('O coeficiente e positivo.');
elseif a < 0
    disp('O coeficiente e negativo.');
else
    disp('O coeficiente e igual a zero.');
end

x = -10:0.1:10;
y = a * x + 2;

figure;
plot(x, y, 'b-', 'LineWidth', 1.5);
xlabel('x');
ylabel('y');
title(['Gráfico de y = ', num2str(a), 'x + 2']);
grid on;

axes('Position', [0.2, 0.6, 0.25, 0.25]);
idx = (x >= -2) & (x <= 2);
plot(x(idx), y(idx), 'r-', 'LineWidth', 2);
xlim([-2 2]);
title('Regiao [-2, 2]');
grid on;

%% Questao 3
multiplos = zeros(1, 5);
for k = 1:5
    multiplos(k) = k * 3;
end

dobro = 2 * multiplos;
indices = 1:5;

figure;
subplot(2, 1, 1);
stem(indices, multiplos, 'filled', 'b');
xlabel('Indice');
ylabel('Valor');
title('Multiplos de 3');
grid on;

subplot(2, 1, 2);
stem(indices, dobro, 'filled', 'r');
xlabel('Indice');
ylabel('Valor');
title('Dobro dos Multiplos');
grid on;

%% Questao 4
t = 0:1:1000;
y = 50000 * exp(-0.05 * t);

figure;
subplot(2, 1, 1);
plot(t, y, 'b-');
xlabel('Tempo (t)');
ylabel('y (Escala Linear)');
title('Escala Comum');
grid on;

subplot(2, 1, 2);
semilogy(t, y, 'r-');
xlabel('Tempo (t)');
ylabel('y (Escala Log)');
title('Escala Logaritmica no Eixo Vertical');
grid on;

%% Questao 5
[X, Y] = meshgrid(1:0.2:10, 1:0.2:20);
Z = sin(X) + cos(Y);

figure;
subplot(1, 2, 1);
surf(X, Y, Z);
shading interp;
colormap('autumn');
xlabel('Eixo X');
ylabel('Eixo Y');
zlabel('Eixo Z');
title('Superficie 3D');
grid on;

subplot(1, 2, 2);
contour(X, Y, Z, 20);
xlabel('Eixo X');
ylabel('Eixo Y');
title('Curvas de Nivel');
grid on;