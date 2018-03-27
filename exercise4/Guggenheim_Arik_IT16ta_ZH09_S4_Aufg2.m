function [root, xit, n] = Guggenheim_Arik_IT16ta_ZH09_S4_Aufg2(func, a, b, tol)
    if (a >= b || func(a) * func(b) >= 0)
        error('Input not valid');
    end
    xit = [];
    n = 0;
    max_iterations = 1000;
    while (abs(a-b)/2 > tol && abs(a-b)/2 ~= eps)
        n = n + 1;
        root = (a+b) / 2;
        if (func(root) <= 0)
            a = root;
        else 
            b = root;            
        end
        if (max_iterations == n)
          error('Too many iterations');
        end
        xit(n) = root;
    end
end