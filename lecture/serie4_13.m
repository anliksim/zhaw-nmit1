A = [4 -1 1;-2 5 1;1 -2 5];
x0 = [0;0;0];
b = [5;11;12];

D = diag(diag(A));
Dinv = inv(D);
Dinvb = Dinv*b;
LpR = A-D;

for i = 1:10
    x0 = -Dinv*LpR*x0+Dinvb
end