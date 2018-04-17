function [A_triangle,detA,x] = Anliker_Simon_IT16ta_ZH09_S7_Aufg2(A,b)
% Gaussalgorithmus für das lineare Gleichungssystem A*x = b mit Berechnung
% des Vektors x. Gibt zusätzlich die Determinante von A (detA) sowie die
% obere Dreiecksmatrix von A (A_triangle) zurück. 
%
% A: Matrix mit Dimension n*n bzw 
% b: Spaltenvektor mit n Zeilen
% Example: [A_triangle,detA,x] = Anliker_Simon_IT16ta_ZH09_S7_Aufg2([200 150 100;50 30 20;20 10 0],[2150;470;150])

n = size(A,2);

if(n ~= size(A,1))
    error('A muss n*n gross sein')
end

if(n ~= size(b,1))
    error('b muss n Zeilen haben')
end

% A als Ab für den Gaussalgorithmus
A = [A,b];

% Zähler für Zeilenvertauschungen
zswitch = 0;
% j - Zeilenzahl, i - Spaltenzahl
for i = 1:n-1
    
    % Falls a_ii gleich 0 auf Regularität prüfen
    % und allenfalls Zeilen tauschen
    if A(i,i) == 0
        
        % Prüft ob mindestend ein Wert in der Spalte nicht 0 ist
        regular = 0;
        for j = i+1:n
          regular = regular + (A(j,i) ~= 0);
        end
        
        % Falls alle Werte in der Spalte 0 sind
        if ~regular
            error('A ist nicht regulär')
        end
        
        for j = i+1:n
            if A(j,i) ~= 0
                % Tausche Zeile i mit Zeile j
                A([i,j],:) = A([j,i],:);
                zswitch = zswitch + 1;
                break;
            end
        end
    end
    
    for j = i+1:n
        % Zeile j := Zeile j - a_ji/a_ii * Zeile i
        A(j,:) = A(j,:) - (A(j,i)./A(i,i)).*A(i,:);
    end
end

% Obere Dreiecksmatrix von A
A_triangle = A(:,1:n);

% Determinate A als Produkt von ~a_ii
detA = (-1)^zswitch;
for i = 1:n
    detA = detA * A_triangle(i,i);
end

% x berechnen durch Rückwärtseinsetzen
x = zeros(3,1);
for i = n:-1:1
    % Summer aller a_ij * x_j
    sum = 0;
    for j = i+1:n
      sum = sum + A(i,j) * x(j);
    end
    % b_i minus Summe durch a_ii
    x(i) = (A(i,n+1) - sum) / A(i,i);
end

end