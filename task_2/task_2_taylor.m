syms x

f = (x - 1) * sinh(x);

a = 0; 

taylor_series_example = taylor(f, x, 'ExpansionPoint', a, 'Order', 5);

disp('--- Приклад: f(x) = (x-1)sh(x) в точці x = 0 до 5-го члена ---');
disp('Поліном Тейлора (4-го степеня):');
disp(taylor_series_example);