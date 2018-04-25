function [] = Anliker_Simon_IT16ta_ZH09_S8_Aufg3()
% NMIT Serie 8 Aufgabe 3 
% Example: Anliker_Simon_IT16ta_ZH09_S8_Aufg3();

A = [0 0 0 1 ; 8 4 2 1 ; 729 81 9 1; 2179 169 13 1];
b = [150; 104; 172; 152];
[~,~,x] = Anliker_Simon_IT16ta_ZH09_S7_Aufg2(A, b);

p = @(x,y) x(1)*y.^3 + x(2)*y.^2 + x(3)*y + x(4);

start_year = 1997;
end_year = 2010;

x_Axis = 0:0.001:13;
plot(x_Axis+start_year, p(x, x_Axis));
hold on;
xlim([start_year end_year]);

polyval(x,2003-start_year)
polyval(x,2004-start_year)

y = polyfit([0 2 9 13],[150 103 172 152],3);
plot(x_Axis+start_year, p(y, x_Axis));
legend('own', 'polyfit')
polyval(y,2003-start_year)
polyval(y,2004-start_year)

end

