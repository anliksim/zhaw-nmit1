function [y,value,abs_err,rel_err] = Anliker_Simon_IT16ta_ZH09_S3_Aufg3(x,B,nmax)
% x: beliebige Dezimalzahl inkl Nachkommastellen
% B: Basis 1 < B < 10
% nmax: max Nachkommastellen
% ...
% Example: [y,value,abs_err,rel_err] = Anliker_Simon_IT16ta_ZH09_S3_Aufg3(7.44, 5, 2)

if (1 >= B) && (B >= 10)
   error('Basis B must be between 1 and 10 exclusive'); 
end

% Ganzzahliger Anteil
z1 = abs(fix(x));
% Nachkomma Anteil
z2 = abs(x) - z1;

% Hilfsvariablen
div = z1;
count = 0;
dummy1(1) = '0';
dummy2(1) = '0';

% Solange der Quotient nicht 0 ist
while div > 0 
    % Wiederhole für nächste Stelle
    count = count + 1; 
    % Teile Zahl mit Rest durch Basis B
    rest = mod(div, B);
    % Schreibe Rest in dummy1 and der Stelle count
    dummy1(count) = num2str(rest);
    % Rest der Division ist nächste Ziffer
    div = fix(div/B); 
end

div = z2;
count = 0;

% Solange Rest nicht 0 oder bis nmax erreicht ist
while (div ~= 0) && (length(dummy2) ~= nmax)
    % Wiederhole für nächste Stelle
    count = count + 1;
    % Multipliziere Zahl mit Basis B
    res = div * B;
    % Ganzzahliger Anteil
    res_z1 = abs(fix(res));
    % Schreibe ganzzahliger Anteil in dummy2 and der Stelle count
    dummy2(count) = num2str(res_z1);
    % Nachkomma Anteil ist nächste Ziffer
    div = abs(res) - res_z1;
end

value = 0; % TODO
abs_err = 0; % TODO
rel_err = 0; % TODO

% Invertiert dummy1 um das richtige Resultat zu erhalten
inv_d1 = inverse_string(dummy1);

% Füge die Vor- und Nachkommastellen zusammen
y = strcat(inv_d1,'.',dummy2);

end


function [inv_str] = inverse_string(str)
% Nimmt einen beliebigen String und kehrt ihn um.
%
% str: zu invertierende string Sequenz
% Example: [inv_str] = inverse_string('123')

len = length(str);
idx = len+1;
inv_str(len) = '0';

for i = 1:len
    inv_str(i) = str(idx-i);
end

end