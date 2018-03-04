function [y,ydiff,yint] = Anliker_Simon_IT16ta_ZH09_S1_Aufg2(a,xmin,xmax)
% a: array containing the coefficients in decreasing order
% Example: [y1,y2,y3] = Anliker_Simon_IT16ta_ZH09_S1_Aufg2([2,1,3], -5, 5)
% Aufg1 as input: [y1,y2,y3] = Anliker_Simon_IT16ta_ZH09_S1_Aufg2([1,-5,-30,110,29,-105], -10, 10);

% check for errors
if size(a,1) ~= 1 && size(a,2) ~= 1
    error('Error: a must be a row or column vector!')
end

% use 1000 steps
step = abs(xmin-xmax) / 1000;

% define x
x = xmin:step:xmax;

% lenght of a
len = length(a);

% order of plynomial
n = len - 1;

% init variables
y=a(len);
ydiff=0;
yint=a(len)*x;

% build the polynom
for i=0:n
    y = y + a(i+1) * x.^(n-i);
    ydiff = ydiff + (n-i) * a(i+1) * x.^(n-i-1);
    yint = yint + a(i+1)/(n-i+1) * x.^(n-i+1);
end

% plot results
figure('Name','Aufg2');
plot(x,y,x,ydiff,x,yint);
xlim([-10 10]);
ylim([-3500 3500]);
legend('function', 'differential', 'integral');
grid on;

end