x = -2*pi:pi/20:2*pi;
y = -2*pi:pi/20:2*pi;


[X, Y] = meshgrid(x, y);

Z = X.*sin(Y) + Y.*sin(X);

figure;
surf(X, Y, Z);

title('Спосіб 3: Побудова за допомогою meshgrid та surf');
xlabel('Вісь X');
ylabel('Вісь Y');
zlabel('Вісь Z');
shading interp; 
colorbar;   