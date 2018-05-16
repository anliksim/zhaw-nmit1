% Funktionen zur Bestimmung der Empfaenger
f1 = @(x,y) ((x.^2)./186.^2) - ((y.^2)./(300.^2 -186.^2)) -1;
f2 = @(x,y) (((y-500).^2)./(279.^2)) - ((x-300).^2./(500.^2-279.^2)) - 1;

% Grafisches lösen des Gleichungssystems
hold on;
grid on;
val = 2e3;
ezplot(f1,[-val val]);
ezplot(f2, [-val val]);

f = @(x,y) [f1(x,y),f2(x,y)];

syms x y;
jc = jacobian(f,[x, y]);

% Naeherung berechnen mit Nullstellen
x = newton([-1273; 1594], f, jc);
naeherung(:,1) = x(:,1);
x = newton([740; 906], f, jc);
naeherung(:,2) = x(:,2);
x = newton([254; 219], f, jc);
naeherung(:,3) = x(:,3);
x = newton([-193; 66], f, jc);
naeherung(:,4) = x(:,4);

% Plotten
plot(naeherung(1,:),naeherung(2,:),'naeherung');

function x = newton(nullstelle, f, jc)

    x(:,1) = nullstelle;
    x(:,2) = x(:,1) - jc(x(1,1),x(2,1))^-1 * f(x(1,1),x(2,1));

    i = 2;
    tolerance = 10e-5;
    while  norm(x(:,i) - x(:,i-1), inf) > tolerance
            x(:,i+1) = x(:,i) - jacobi(x(1,i),x(2,i))^-1 * f(x(1,i),x(2,i));
            i = i+1;
    end
end



