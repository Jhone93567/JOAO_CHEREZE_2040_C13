%% Questao 1
M = 2;
B = 3;
K = 8;

num1 = 1;
den1 = [M B K];
G1 = tf(num1, den1)

t1 = 0:0.01:15;
figure;
step(G1, t1);
xlabel('Tempo (s)');
ylabel('Posicao (m)');
title('Resposta ao Degrau - Sistema Massa-Mola-Amortecedor');
grid on;

%% Questao 2
R = 1000;
tau = 2;

C = tau / R
num2 = 1;
den2 = [R*C 1];
G2 = tf(num2, den2)

t2 = 0:0.01:10;
figure;
step(G2, t2);
xlabel('Tempo (s)');
ylabel('Tensão de Saida (V)');
title('Resposta ao Degrau - Circuito RC');
grid on;

%% Questao 3
M_corpo = 4;
F = 1;
v_est = 0.5;

B_atrito = F / v_est
num3 = 1;
den3 = [M_corpo B_atrito];
G3 = tf(num3, den3)

figure;
step(F * G3);
xlabel('Tempo (s)');
ylabel('Velocidade (m/s)');
title('Resposta a Força Aplicada - Sistema Massa-Atrito');
grid on;