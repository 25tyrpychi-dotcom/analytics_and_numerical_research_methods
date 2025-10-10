syms x;

y = (cos(7*x) - cos(3*x+0.5)) / tan(4*x);

f = limit(y,x,pi/2);

disp(['Limit as x -> pi/2: ', char(f)]);


limit_left = limit(y, x, pi/2, 'left');
disp(['Limit as x -> pi/2 from the LEFT: ', char(limit_left)]);

limit_right = limit(y, x, pi/2, 'right');
disp(['Limit as x -> pi/2 from the RIGHT: ', char(limit_right)]);

disp('--- Calculating Second Limit ---');


y2 = 5^(x/(1 - x^2));

f2 = limit(y2,x,inf);

disp(['Limit as x -> inf for second limit: ', char(f2)]);
