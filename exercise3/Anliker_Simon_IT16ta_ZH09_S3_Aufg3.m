function [y,value,abs_err,rel_err] = Anliker_Simon_IT16ta_ZH09_S3_Aufg3(x,B,nmax)
% Rechnet eine beliebige Dezimalzahl x inkl. Nachkommastellen in eine Basis
% B um. Zurückgegeben werden die Zahl y in der neuen Basis inkl. Vorzeichen
% und nmax Nachkommastellen, der Wert von y sowie der absolute und
% relative Fehler, der durch das allfällige Abschneiden passiert.
%
% x: beliebige Dezimalzahl inkl Nachkommastellen
% B: Basis 1 < B < 10
% nmax: max Nachkommastellen
% Example: [y,value,abs_err,rel_err] = Anliker_Simon_IT16ta_ZH09_S3_Aufg3(-7.44, 5, 2)
% Example: [y,value,abs_err,rel_err] = Anliker_Simon_IT16ta_ZH09_S3_Aufg3(1006.687, 2, 13)

if (B <= 1) || (B >= 10)
   error('Basis B must be between 1 and 10 (exclusive)'); 
end

% Ganzzahliger Anteil
z1 = abs(fix(x));
% Nachkomma Anteil
z2 = abs(x) - z1;

% Hilfsvariablen
div = z1;
count = 0;
value = 0;

% Invertiertes Resultat des ganzzahligen Anteils
inv_y_int(1) = '0';

% Solange der Quotient nicht 0 ist
while div > 0 
    % Wiederhole für nächste Stelle
    count = count + 1; 
    % Teile Zahl mit Rest durch Basis B
    rest = mod(div,B);
    % Schreibe Rest and der Stelle count
    inv_y_int(count) = num2str(rest);
    % Rest der Division ist nächste Ziffer
    div = fix(div/B); 
    % Addiere effectiven Wert zu value
    value = value + rest * B^(count-1);
end

div = z2;
count = 0;

% Resultat des Nachkomma Anteils
y_dec(1) = '0';

% Solange Rest nicht 0 oder bis nmax erreicht ist
while (div ~= 0) && (length(y_dec) ~= nmax)
    % Wiederhole für nächste Stelle
    count = count + 1;
    % Multipliziere Zahl mit Basis B
    res = div * B;
    % Ganzzahliger Anteil
    res_z1 = abs(fix(res));
    % Schreibe ganzzahliger Anteil in dummy2 and der Stelle count
    y_dec(count) = num2str(res_z1);
    % Nachkomma Anteil ist nächste Ziffer
    div = abs(res) - res_z1;
end

% Berechne effectiven Wert der Nachkommastellen
inv_y_dec = y_dec(end:-1:1);
dec_len = length(y_dec);
dec_value = 0;
for i = 1:dec_len
    dec = str2double(inv_y_dec(i));
    dec_value = dec_value + dec * B^(i-1);
end
value = value + (dec_value / B^dec_len);
% Passe value dem Vorzeichen an
value = value * sign(x);

% Berrechne den absoluten Fehler
abs_err = x - value;
% Berrehcne den relativen Fehler
rel_err = abs_err / x;

% Bestimme das Vorzeichen
x_sign = sign2str(x);

% Invertieren um das richtige Resultat zu erhalten
y_int = inv_y_int(end:-1:1);

% Füge die Vor- und Nachkommastellen zusammen
y = strcat(x_sign,y_int,'.',y_dec);

end

function [x_sign] = sign2str(x)
% Gibt das Vorzeichen einer Zahl als string zurück d.h. '+' oder '-'.
%
% x: positive oder negative Zahl
% Example: [x_sign] = sign2str(-5)

x_sign = '+';
if sign(x) == -1
    x_sign = '-';
end

end