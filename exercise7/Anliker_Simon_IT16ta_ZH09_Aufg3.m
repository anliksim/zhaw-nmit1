% Vergleicht unsere eigenen Guassalgorithmus mit linsolve und \ Operator.
% Resultat: Bei A1 ist kein Unterschied feststellbar. A2 bis A4 sind minim
% unterschiedlich. Wenn man die Resultate rundet erhält man das selbe
% Resultat.

A1 = [4 -1 -5;-12 4 17;32 -10 -41];
disp('Compare A1 x1');
compare(A1, [-5;19;-39]);
disp('Compare A1 x2');
compare(A1, [6;-12;48]);

A2 = [2 7 3;-4 10 0;12 34 9];
disp('Compare A2 x1');
compare(A2, [25;-24;107]);
disp('Compare A2 x2');
compare(A2, [5;-22;42]);

A3 = [-2 5 4;-14 38 22;6 -9 -27];
disp('Compare A3 x1');
compare(A3, [1;40;75]);
disp('Compare A3 x2');
compare(A3, [16;82;-120]);

A4 = [-1 2 3 2 5 4 3 -1;
    3 4 2 1 0 2 3 8;
    2 7 5 -1 2 1 3 5;
    3 1 2 6 -3 7 2 -2;
    5 2 0 8 7 6 1 3;
    -1 3 2 3 5 3 1 4;
    8 7 3 6 4 9 7 9;
    -3 14 -2 1 0 -2 10 5];
disp('Compare A4 x');
compare(A4, [-11;103;53;-20;95;78;131;-26]);

function [] = compare(A,b)
% Vergleicht den Output von linsolve, backslash und eigener Gauss
% implementation vor und nach dem Runden.

[~,~,x] = Anliker_Simon_IT16ta_ZH09_S7_Aufg2(A,b);
xlin = linsolve(A, b);
xdiv = A\b;

if ~isequal(x,xlin) || ~isequal(x,xdiv)
   disp('Differenz ohne Runden!');
end

rx = round(x);

if ~isequal(rx,round(xlin)) || ~isequal(rx,round(xdiv))
   disp('Differenz mit Runden!');
end

end



