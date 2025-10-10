x = -10:1:10; 
y = 4*sin(x);
z = 0.05*x.^2;

figure;
hold on;

plot(x, y, 'y*-', 'DisplayName', 'y = 4sin(x)'); 

plot(x, z, 'rs-', 'DisplayName', 'z = 0.05x^2'); 

hold off;
title('Завдання 1: Графіки з маркерами');
xlabel('X');
ylabel('Y');
grid on;
legend('show');

figure;

subplot(2, 1, 1);
plot(x, y, 'y*-'); 
title('Графік y = 4sin(x)');
xlabel('X');
ylabel('Y');
grid on;

subplot(2, 1, 2);
plot(x, z, 'rs-'); 
title('Графік z = 0.05x^2');
xlabel('X');
ylabel('Y');
grid on;