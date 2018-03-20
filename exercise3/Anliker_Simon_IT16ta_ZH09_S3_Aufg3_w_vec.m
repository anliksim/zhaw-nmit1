function [y,value,abs_err,rel_err] = Anliker_Simon_IT16ta_ZH09_S3_Aufg3_w_vec(x,B,nmax)
% Gleiche Funktion wie Anliker_Simon_IT16ta_ZH09_S3_Aufg3 jedoch unter der
% Verwendung von linien Vektoren für die Speicherung der Zahl.
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

% Elemente im Vektor des ganzzahligen Teils
y_int_el = numel(inv_y_int);
% Vektor mit B^x für die Multiplikation mit y_int
pow_B = B.^(0:1:y_int_el-1);

% Elemente im Vektor des Nachkomma Teils
y_dec_el = numel(y_dec);
% Vektor mit B^x für die Multiplikation mit y_dec
pow_B_dec = B.^(y_dec_el-1:-1:0);

% Effektiver Dezimalwert der umgerechneten Zahl
value_dec = sum(y_dec .* pow_B_dec) / B^y_dec_el;
value = sum(inv_y_int .* pow_B) + value_dec;

% Berrechne den absoluten Fehler
abs_err = x - value;
% Berrehcne den relativen Fehler
rel_err = abs_err / x;

% Bestimme das Vorzeichen
x_sign = sign2str(x);

% Invertierter Vektor y_int
y_int = inv_y_int(end:-1:1);

% Vektoren als string
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
