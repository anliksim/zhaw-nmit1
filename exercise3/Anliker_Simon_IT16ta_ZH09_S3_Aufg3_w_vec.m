function [y,value,abs_err,rel_err] = Anliker_Simon_IT16ta_ZH09_S3_Aufg3_w_vec(x,B,nmax)
% Rechnet eine beliebige Dezimalzahl x inkl. Nachkommastellen in eine Basis
% B um. Zurückgegeben werden die Zahl y in der neuen Basis inkl. Vorzeichen
% und nmax Nachkommastellen, der Wert von y sowie der absolute und
% relative Fehler, der durch das allfällige Abschneiden passiert.
%
% x: beliebige Dezimalzahl inkl Nachkommastellen
% B: Basis 1 < B < 10
% nmax: max Nachkommastellen
% Example: [y,value,abs_err,rel_err] = Anliker_Simon_IT16ta_ZH09_S3_Aufg3_w_vec(-7.44, 5, 2)
% Example: [y,value,abs_err,rel_err] = Anliker_Simon_IT16ta_ZH09_S3_Aufg3_w_vec(1006.687, 2, 13)

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

% Invertiertes Resultat des ganzzahligen Anteils
inv_y_int = [];

% Solange der Quotient nicht 0 ist
while div > 0 
    % Wiederhole für nächste Stelle
    count = count + 1; 
    % Teile Zahl mit Rest durch Basis B
    rest = mod(div,B);
    % Schreibe Rest and der Stelle count
    inv_y_int(count) = rest;
    % Rest der Division ist nächste Ziffer
    div = fix(div/B); 
end

div = z2;
count = 0;

% Resultat des Nachkomma Anteils
y_dec = [];

% Solange Rest nicht 0 oder bis nmax erreicht ist
while (div ~= 0) && (length(y_dec) ~= nmax)
    % Wiederhole für nächste Stelle
    count = count + 1;
    % Multipliziere Zahl mit Basis B
    res = div * B;
    % Ganzzahliger Anteil
    res_z1 = abs(fix(res));
    % Schreibe ganzzahliger Anteil in dummy2 and der Stelle count
    y_dec(count) = res_z1;
    % Nachkomma Anteil ist nächste Ziffer
    div = abs(res) - res_z1;
end

y_int_el = numel(inv_y_int);
pow_B = B.^(0:1:y_int_el-1);

y_dec_el = numel(y_dec);
pow_B_dec = B.^(y_dec_el-1:-1:0);

value_dec = sum(y_dec .* pow_B_dec) / B^y_dec_el;

value = sum(inv_y_int .* pow_B) + value_dec;
% Berrechne den absoluten Fehler
abs_err = x - value;
% Berrehcne den relativen Fehler
rel_err = abs_err / x;

% Bestimme das Vorzeichen
x_sign = sign2str(x);

y_int = inv_y_int(end:-1:1);
y_int_str = num2str(y_int')';
y_dec_str = num2str(y_dec')';

% Füge die Vor- und Nachkommastellen zusammen
y = strcat(x_sign,y_int_str,'.',y_dec_str);

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

function [y_int] = integer_translation(x_int)

end

function [y_dec] = decimal_translation(x_dec) 

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