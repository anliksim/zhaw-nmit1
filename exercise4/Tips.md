# Serie 4

## Aufgabe 1

### a)

 * y = log(f(x)) = log(c * a^x) = log(c) + log(a) * x (Geradengleichung)

 * Anwenden auf g(x) = 10^5 * ((2e)^-1/100)^x
   y-Achsenabschnitt:  log(10^5) = 5
   Steigung: log(2e^-1/100) = ...

## Aufgab 2

Abbruchbedingung nicht vergessen. (while(|x(i+1)-x(i)| > tol && n < 1000))
No more tips :(

## Aufgabe 3

f = @(x) x^2;
tol1 = 1e-15;
[root, xit, n] = Serie4_Aufg2(f,0,2,tol1)
semilogy(abs(xit - sqrt(2)))

n_arr = zeros(20, -1)

for i=1:20
   tol = 10^-i;
   [root, xit, n] = ...
   n_arr(i) = n;
