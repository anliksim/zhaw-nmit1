% In den meisten Fällen ist die iterative Version ein vielfaches schneller.
% Dies liegt daran dass bei der Rekursion jeder Funktionsaufruf auf den
% Stack geschrieben werden muss.

t1 = tic;
fak(490);
toc(t1)

t2 = tic;
fakIterativ(490);
toc(t2)


function y = fak(n)
    % FAK y = fak(n) berechnet die Fakultät von n
    % fak(n) = n * fak(n -1), fak(0) = 1
    % Fehler, falls n < 0 oder nicht ganzzahlig
    if n < 0 | fix(n) ~= n,
        error(['ERROR: FAK ist nur für nicht-negative, ganze Zahlen definiert'])
    end
    if n <= 1
        y = 1;
    else
        y = n*fak(n-1);
    end
end

function y = fakIterativ(n)
    y = 1;
    for i=1:n
        y = y * i;
    end
end