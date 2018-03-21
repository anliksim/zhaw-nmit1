Serie 4

1a)

log(c) + log(a) * x (Geradengleichung)

log(c) => y-Achsenabschnitt
log(a) => Steigung


2)

Satz 3.2 Bisektionsverfahren implementieren

Bedingungen und Abbruchbedingung nicht vergessen

while( | x(i+1) - x(i) | > tol && n < 1000)


3)

f = @(x) x^2 - 2;
tol1 = 10^-15;
[root, xit, n] = Serie4_Aufg2(f, 0, 2, tol1)
semilogy(abs(xit-sqrt(2)))


n_arr = zeros(20,1);
for i = 1:20
	tol = 10^-i;
	[root, xit, n] = ...
	n_arr(i) = n;
	
	
n sagt aus wie oft man iterieren muss um ... zu unterscheiden


