# Tips

## Aufgabe 1

* c ist optinal (aber mega fescht empfohlen)

## Aufgabe 2

* a) x = 1.99:0.02/500;2.01 (äquidistante Punkte)
     f1 = ....
     f2 = ....
     plot(x,f1,x,f2)
     Plot ist anders wegen Rundungen (f1 hat mehr operationen = mehr Rundungen)
* b) lim g(x) plotten; x -> 0
     x = -1e-14:1e-17:1e-14

## Aufgabe 3

* b) Wurzel kann immer gezogen werden, da Sn2 nicht gegen 0 strebt.

## Aufgabe 4

* 1 + eps != 1
  eps =1;
  while(?); eps = eps/2; end; eps = eps * 2;
