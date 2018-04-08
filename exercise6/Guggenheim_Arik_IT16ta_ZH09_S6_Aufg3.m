% Newton Problem: Funktion muss abgeleitet werden 

e = exp(1);
f = @(x) (e.^(x.^2)+x.^(-3) - 10);
Guggenheim_Arik_Gruppe09_S6_Aufg3(f, -1, -1.2, 10^-3)

function [result] =  Guggenheim_Arik_Gruppe09_S6_Aufg3(f, x0, x1, tol)
result = zeros(10,1);
result(1) = x0;
result(2) = x1;
counter = 2;

while f(result(counter)-tol)*f(result(counter)+tol) > 0
    result(counter+1) = result(counter) -((result(counter)-result(counter-1))/(f(result(counter))-f(result(counter-1))))*f(result(counter));
    counter = counter + 1;   
end
y = result(counter);
end