## Aufgabe 1
 * Konditionszahl gemäss Script

## Aufgabe 2
 * eps = B/2 * B^-10
       = 5 * 10^-10
     x = 0.4 * 10^-10 < eps

   1 + x = ?
   wurzel x = ?
   x/10^9 = ?
   (runden, normieren)

## Aufgabe 3
function [y, value, abs_err  rel_err] = S3_A3(x,, b, nmax)
% example call....

% Ganzzahliger Anteil
z1 = abs(fix(x))
z2 = abs(x) - z1
div = z1
count = 0
dummy1(1) = '0'
dummy2(1) = '0'

while div > 0
    count = count + 1
    rest = mod(div, b)
    dummy1(count) = num2str(rest)
    div = fix(div/b)
end

% dummy umsortieren, für Nachkommateil machen
