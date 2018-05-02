n = 1000;
dim = 100;
adxmax = zeros(1, n);
adxobs = zeros(1, n);
adxmax_dxobs = zeros(1, n);
for i = 1:n
    A = rand(dim);
    b = rand(dim, 1);
    As = A + rand(dim) / 10 ^ 5;
    bs = b + rand(dim, 1) / 10^5;
    [x, xs, dxmax, dxobs] = Guggenheim_Arik_IT16ta_ZH09__S9_Aufg2(A, As, b, bs);
    adxmax(i) = dxmax;
    adxobs(i) = dxobs;
    adxmax_dxobs(i) = dxmax / dxobs;
end

semilogy(adxmax);
hold on;
semilogy(adxobs);
legend('dx_{max}','dx_{obs}');