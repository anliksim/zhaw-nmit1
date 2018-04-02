% a) Zwischen 0.25 und 3 liegt ein anziehnder Fixpunkt vor. Ab 3 divergiert
% die Funktion.
% b) Der Fixpunkt ist eine stabile Infektionrate.
% c) a = k_i+1 / k_i(1-k_i)


% Für jedes alpha
for a = [0.25, 0.5, 1, 1.5, 2, 2.5, 3, 3.5, 4]
    
    % Speicher allozieren
    k = zeros(1000);
    % Startwert - 10% sind erkrankt
    k(1) = 0.1;

    % Funktion für die Ausbreitung
    f = @(x) a*x*(1-x);
    
    % Ausbreitung berechnen mit 1000 Iterationen
    for i = 1:1000
        k(i+1) = f(k(i));
    end
    % Neue Figur plotten für alpha mit Werten von k
    figure('Name', num2str(a));
    plot(k);
end
    
    