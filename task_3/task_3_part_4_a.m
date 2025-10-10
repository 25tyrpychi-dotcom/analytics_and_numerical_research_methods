figure;

ezplot('x*sin(y) + y*sin(x)', [-2*pi, 2*pi]);

title('Графік неявної функції x*sin(y) + y*sin(x) = 0');
xlabel('Вісь X');
ylabel('Вісь Y');
grid on;
axis equal; 