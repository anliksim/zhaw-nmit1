func = @(x) cos(x).*sin(x);

[root, xit, n] = Guggenheim_Arik_G09_S04_Aufg2(func, -100, +100, 0.1);
disp(root)
disp(n)

function [root, xit, n] = Guggenheim_Arik_G09_S04_Aufg2(func, a, b, tol)
    if (a == b || func(a) * func(b) >= 0)
        error('Input not valid');
    end
    xit = [];
    max_iterations = 1000;
    while (abs(a-b) >= tol)
        root = (a+b) / 2;
        if (func(root) <= 0)
            a = root;
        else 
            b = root;
        end
        xit = [xit root];
        if (max_iterations == length(xit))
            error('Too many iterations');
        end
    end
    n = length(xit);
    root = (a+b) / 2;
end
