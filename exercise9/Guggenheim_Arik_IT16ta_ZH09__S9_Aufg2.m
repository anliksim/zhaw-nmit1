function [x, xs, dxmax, dxobs] = Guggenheim_Arik_IT16ta_ZH09__S9_Aufg2(A, As, b, bs)
%[x, xs, dxmax, dxobs]=Guggenheim_Arik_IT16ta_ZH09__S9_Aufg2(A, As, b, bs);
    x = linsolve(A, b);
    xs = linsolve(As, bs);
    dxobs = norm(A - As, Inf) / norm(A, Inf);
    if cond(A, Inf) * ((norm((A - As), Inf)) / (norm(A, Inf))) < 1
        dxmax = cond(A, Inf) / (1 - cond(A, Inf) * (norm(A - As, Inf) / norm(A, Inf))) * (norm(A - As, Inf) / norm(A, Inf) - norm(b - bs, Inf) / norm(b, Inf));
    else
        dxmax = NaN;
    end
end
% A=[20000, 30000, 10000; 10000, 17000, 6000; 2000, 3000, 2000]
% As=[19900, 29900, 9900; 9900, 16900, 5900; 1900, 2900, 1900]
% b=[5200000; 3000000; 760000]
% bs=[5720000; 3300000; 800000]
%[x, xs, dxmax, dxobs]=Guggenheim_Arik_IT16ta_ZH09__S9_Aufg2(A, As, b, bs);