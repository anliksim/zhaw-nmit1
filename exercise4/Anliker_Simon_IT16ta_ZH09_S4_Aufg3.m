% Funktion mit Nullstelle bei Wurzel 2
func = @(x) x.^2-2;


% Absoluter Fehler / Iterationen bei Toleranz 10^-15
[root, xit, n] = Guggenheim_Arik_IT16ta_ZH09_S4_Aufg2(func, 0, 2, 10^-15);
figure('Name','3.1-1');
semilogy(abs(sqrt(2)-xit));
xlabel('Iterations');
ylabel('Abs error');
grid on;

% Absoluter Fehler / Iterationen bei Toleranz 10^-16
[root, xit, n] = Guggenheim_Arik_IT16ta_ZH09_S4_Aufg2(func, 0, 2, 10^-16);
figure('Name','3.1-2');
semilogy(abs(sqrt(2)-xit));
xlabel('Iterations');
ylabel('Abs error');
grid on;



% Absoluter Fehler / Iterationen bei Toleranz 10^-15

% Toleranz von 10^-1 bis 10^-20
tol(20) = zeros;
% Iterationen
iter(20) = zeros;
 
for i = 1:20
    % Schreibe Toleranz
    tol(i) = 10^-i;
    % Berechne Nullstelle
    [root, xit, n] = Guggenheim_Arik_IT16ta_ZH09_S4_Aufg2(func, 0, 2, tol(i));
    % Schreibe Anzahl Iterationen
    iter(i) = n;
end
 
figure('Name','3.2');
loglog(iter, tol);
grid on;
xlabel('Iterations')
ylabel('Tolerance');
