x = 0:1/1000:1;

g = x;
h = cos(x);
f = x - cos(x);

plot(x, g, x, h, x, f);
legend('g(x)','h(x)','f(x)');
grid;

% Lösung: Schnittpunkt von g(x) und h(x)