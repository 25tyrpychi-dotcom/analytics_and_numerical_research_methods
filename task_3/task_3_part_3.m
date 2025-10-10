phi = 0:pi/100:2*pi;

r = 20 * (sin(phi/3)).^3;


figure;

polar(phi, r);

title('Графік функції r = 20sin^3(\phi/3)');
grid on;