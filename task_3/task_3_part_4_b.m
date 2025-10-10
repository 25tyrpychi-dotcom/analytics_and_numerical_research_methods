figure;

ezplot('4*(t - sin(t))', '4*(1 - cos(t))', [-2*pi, 2*pi]);

title('Графік: x=4(t-sin(t)), y=4(1-cos(t))');
xlabel('x(t)');
ylabel('y(t)');
grid on;
axis equal; 