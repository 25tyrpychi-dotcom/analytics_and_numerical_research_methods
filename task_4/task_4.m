clear all;
clc;
format short; 

m = 3;
n = 10;

A = [ 20.3,   5.6,    n,          -3.2;
      m/(n+1),15.7,   -1.6,       -2.4;
      -1,     -m,     25.5,       -n/(2*m+1);
      1,      7.73,   -1,         n*m ];

B = [ 4.17 - m;
      n + m;
      -9.93;
      1 + n ];

disp('--- Матриця коефіцієнтів A: ---');
disp(A);
disp('--- Стовпець вільних членів B: ---');
disp(B);


disp('--- Перевірка на сумісність: ---');

C = [A B];

rank_A = rank(A);
rank_C = rank(C);

fprintf('Ранг матриці A: r1 = %d\n', rank_A);
fprintf('Ранг розширеної матриці C: r2 = %d\n', rank_C);

if rank_A == rank_C
    disp('Оскільки ранги рівні, система є сумісною.');
else
    disp('Ранги не рівні, система несумісна і не має розв''язків.');
    return; 
end


disp(' '); 
disp('--- Метод Крамера: ---');

d = det(A);
fprintf('Головний визначник системи d = %.4f\n', d);

D1 = A; D1(:,1) = B;
D2 = A; D2(:,2) = B;
D3 = A; D3(:,3) = B;
D4 = A; D4(:,4) = B;

d1 = det(D1);
d2 = det(D2);
d3 = det(D3);
d4 = det(D4);

x1_kramer = d1/d;
x2_kramer = d2/d;
x3_kramer = d3/d;
x4_kramer = d4/d;

X_kramer = [x1_kramer; x2_kramer; x3_kramer; x4_kramer];
disp('Розв''язок, знайдений методом Крамера (X):');
disp(X_kramer);


disp(' ');
disp('--- Матричний метод: ---');

X_matrix = inv(A) * B;

disp('Розв''язок, знайдений матричним методом (X):');
disp(X_matrix);


disp(' ');
disp('--- Перевірка розв''язку: ---');

Check_B = A * X_matrix;
disp('Результат перевірки (A * X):');
disp(Check_B);
disp('Оригінальний стовпець вільних членів (B):');
disp(B);