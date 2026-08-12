clear all
clc
%% Operações Básicas
a = 12;
b = 5;

a + b
a - b
a * b
a / b
a ^ b
%% Raiz, arredondamento e resto
sqrt(144)
round(7.6)
ceil(4.01)
mod(250, 17)
%% MDC e MMC
gcd(24,36)
lcm(12,18)
%% Exponencial e Trigonometria
exp(2)
sind(30)
cosd(60)
tand(45)
%% Criando vetores
1 : 10
10 : -1 : 1
0 : 2 : 20
linspace(0,100,5)
%% Acessando posições de um vetor
v = [4 8 15 16 23 42];
v(1)
v(numel(v))
v(2:5)
v([1,3,6])
%% Informações sobre um vetor
v = [5 10 15 20 25];
numel(v)
size(v)
sum(v)
mean(v)
max(v)
min(v)
%% Vetor linha e vetor coluna
v = [10 20 30 40];
v_col = v'
size(v)
size(v_col)
%% Criando e acessando uma matriz
A = [3 6 9; 2 4 8; 1 5 7];
A(2,3)
A(1,:)
A(:,2)
size(A)
%% Operações com Matrizes
A = [1 2; 3 4];
B = [2 0; 1 5];
A + B
A * B
A'
zeros(3,3)
ones(2,4)
eye(4,4)
rand(3,3)