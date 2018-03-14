function [y,value,abs_err,rel_err] = Anliker_Simon_IT16ta_ZH09_S3_Aufg3(x,B,nmax)
% B: Basis
% nmax: Nachkommastellen
% ...
% Example: 

% Ganzzahliger Anteil
z1 = abs(fix(x));
% Nachkomma Anteil
z2 = abs(x) - z1;

% Hilfsvariablen
div = z1;
count = 0;
dummy1(1) = '0';
dummy2(1) = '0';


while div > 0
    count = count + 1;
    rest = mod(div, B);
    dummy1(count) = num2str(rest); % Schreibe rest in dummy and der Stelle count
    div = fix(div/B);
end

% dummy1 - reihenfolge beachten

% same für Nachkommaanteil

