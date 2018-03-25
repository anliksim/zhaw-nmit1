fArr = ones(1, 100);
gArr = ones(1, 100);
hArr = ones(1, 100);

for n = 1:100
   fArr(n) = f(n);
   gArr(n) = g(n);
   hArr(n) = h(n);
end

% Uncomment the plot you want to see %
% loglog(fArr)
% semilogy(gArr)
% loglog(hArr)

function x = f(n)
    x = 5 / nthroot((2*n.^2), 3);
end

function x = g(n)
    x = 10.^5 .* (2.*exp(1).^(-n/100));
end

function x = h(n)
    x = ((10.^2*n)./(2.^5*n).^2);
end