x1 = 1;
x2 = 1;
n = 6;
product1 = 0;
product2 = 0;
f1 = @(x) sqrt(2-2*sqrt(1-(x^2)/4));
f2 = @(x) sqrt(x^2/(2*(1+sqrt(1-(x^2/4)))));


plot(pi,'r');
xlim('auto');
ylim('auto');
hold on;

for i=0:27
    x1 = f1(x1);
    x2 = f2(x2);
    product1 = 2 * n * x1;
    product2 = 2 * n * x2;
    n = 2 * n;
    plot(n, product1, '*r');
    plot(n, product2, '*b');
end

hold off;

%% Aufgabe 3a mit der Funktion f1
% Die Punkte nähern sich zunächst wie erwartet 2*pi an. Anschliessend
% steigen die Funktionswerte an, TODO:
% schliesslich fallen die Funktionswerte wieder auf 0, weil die Funktion für grosse n gegen 0 strebt.

%% Aufgabe 3b mit der Funktion f2
% Die Funktionswerte bleiben im Bereich 2*pi. Der Ausdruck wird für grosse
% n nicht 0 (wie in 3a).