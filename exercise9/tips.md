# Serie 9
## Aufgabe 1

### a

(alles durch 1000 gerechnet für Einfachheit)

>> A = [20 30 10; 10 17 6; 2 3 2]

A =

    20    30    10
    10    17     6
     2     3     2

>> bs = [5720;3300;836]

(b schlange)
bs =

        5720+-100
        3300+-100
         836+-100
		 
		 
Fehler +- 100


=> Satz 4.3 aus Skript

|| b - bs ||_inf = 100


### b


As =

    20+-0.1    30+-0.1    10+-0.1
    10+-0.1    17+-0.1     6+-0.1
     2+-0.1     3+-0.1     2+-0.1
	 
=> Satz 4.4 aus Skript

||A - As||_inf = 0.3 (3 * +-0.1)


### c

Worst case - alles minus den Fehler

As =

    20-0.1    30-0.1    10-0.1
    10-0.1    17-0.1     6-0.1
     2-0.1     3-0.1     2-0.1
	 

bs =

        5720-100
        3300-100
         836-100
		 	 

Vergleichen


## Aufgabe 2

Aufgabe 1 implementieren

dx_max aus Satz 4.5

dx_max=NaN


## Aufgabe 3

n=1000;
dim=100;
res=(n,3);

for i=1:n
	A=rand(dim);
	b=rand(dis,1);
	
; gestörtes Gleichungssystem


; plot dx_ops, dx_max, dx_max/dx_ops - x Achse 1 bis n



