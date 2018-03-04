function [y,ydiff,yint] = Serie1_Aufg2(a,xmin,xmax)
% a: array containing the coefficients in decreasing order
% Example: [y1,y2,y3] = Serie1_Aufg2([2,1,3], -5, 5)

% check for errors
if size(a,1) ~= 1 && size(a,2) ~= 1
    error('Error: a must be a row or column vector!')
end

% use 1000 steps
step = abs(xmin-xmax) / 1000;

% define x
x = xmin:step:xmax;

% order of plynomial
n = length(a) - 1;

% init variables
y=0;
ydiff=0;
yint=0;

% build the polynom
for i=0:n
    y = y + a(i+1) * x.^(n-1);
    ydiff = ydiff + i * a(i+1) * x.^(n-2);
    yint = yint + a(i+1)/n + x.^n;
end

plot(x,y,x,ydiff,x,yint)
legend('Fun','Diff','Int')
grid

end