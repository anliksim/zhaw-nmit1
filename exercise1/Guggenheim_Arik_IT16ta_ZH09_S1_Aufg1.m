xmin = -10;
xmax = 10;
step = abs(xmin-xmax) / 1000;
x = xmin:step:xmax;

figure('Name','Aufg1');
plot(x, quadr(x), x, diff(x), x, int(x));
xlim([-8 8]);
ylim([-800 800]);
grid on;

legend('function', 'differential', 'integral');

function y = quadr(n) 
    y = n.^5 - 5*n.^4 - 30*n.^3 + 110*n.^2 + 29*n - 105;
end

function ydiff = diff(n)
    ydiff = 5*n.^4 - 20*n.^3 - 90*n.^2 + 220*n + 29;
end

function yint = int(n)
    yint = 1/6*n.^6 - n.^5 - 15/2*n.^4 + 110/3*n.^3 + 29/2*n.^2 - 105*n + 0;
end