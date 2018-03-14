function [y,value,abs_err,rel_err] = Anliker_Simon_IT16ta_ZH09_S3_Aufg3(x,B,nmax)
% x: beliebige Dezimalzahl inkl Nachkommastellen
% B: Basis 1 < B < 10
% nmax: max Nachkommastellen
% ...
% Example: [y,value,abs_err,rel_err] = Anliker_Simon_IT16ta_ZH09_S3_Aufg3(x,B,nmax)

% Ganzzahliger Anteil
z1 = abs(fix(x));
% Nachkomma Anteil
z2 = abs(x) - z1;

% Hilfsvariablen
div = z1;
count = 0;
y(1) = '0';
dummy2(1) = '0';


while div > 0
    count = count + 1;
    rest = mod(div, B);
    y(count) = num2str(rest); % Schreibe rest in dummy and der Stelle count
    div = fix(div/B);
end

value = 0;
abs_err = 0;
rel_err = 0;

% dummy1 - reihenfolge beachten

% same für Nachkommaanteil

end