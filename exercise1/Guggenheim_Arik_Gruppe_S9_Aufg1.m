x = -10:1:10;

plot(x, quadr(x), x, diff(x), x, int(x));
xlim([-4 4]);
ylim([-1000 1000]);
grid on;

legend('function', 'differential', 'integral');

function x = quadr(n) 
    x = n.^5 - 5*n.^4 - 30*n.^3 + 110*n.^2 + 29*n - 105;
end

function x = diff(n)
    x = 5*n.^4 - 20*n.^3 - 90*n.^2 + 220*n + 29;
end

function x = int(n)
    x = 1/6*n.^6 - n.^5 - 15/2*n.^4 + 110/3*n.^3 + 29/2*n.^2 - 105*n + 0;
end