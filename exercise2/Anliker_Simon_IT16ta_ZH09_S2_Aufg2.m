% Author: Arik Guggenheim, Simon Anliker

% a) Plot polynom f1 and f2 on an interval [1.99, 2.01] 
% with 501 equidistant points

% linearily spaced vector with 501 points between 1.99 and 2.01
x = linspace(1.99, 2.01, 501);

% polynom f1
f1 = x.^7 - 14*x.^6 + 84*x.^5 - 280*x.^4 + 560*x.^3 - 672*x.^2 + 448*x - 128;
% polynom f2
f2 = (x-2).^7;

figure('Name', 'a)');
plot(x, f1, x, f2);
legend('f1','f2');

% Function f1 is different from f2 due to the difference in operations
% executed. After each operation in f1 rounding is applied which changes
% the eventual result.

% b) Plot function g(x) and estimate if calculating the limes is stable.

% interval from -10^-14 to 10^-14 with steps of width 10^-17
limit = 10^-14;
step = 10^-17;
x = -limit:step:limit;

g = x ./ (sin(1 + x) - sin(1));

figure('Name', 'b)');
plot(x, g);
legend('g');

% It is not stable - as x is getting closer to 0 it reaches a value that is
% smaller than eps. If that happens the value will become 0 which results
% in a division by 0.


% c) Change the denominator of g(x)

g2 = x ./ ( 2 .* cos((2 + x) ./ 2) .* sin((x) ./ 2));

figure('Name', 'c)')
plot(x, g, x, g2);
legend('g1','g2');
ylim([1.8 1.9]);
grid

% Issue from b) is fixed - limes is approx 1.850815
