function [ A_triangle, detA, x ] = Guggenheim_Arik_IT16ta_ZH09_S7_Aufg2( A, b )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here


matrix_dimension = size(A,2);

% Calc det
detA = det(A);

% Combine matrices
A(:,matrix_dimension+1) = b;

% Gauss
for i = 1 : matrix_dimension - 1
    max_element = A(i,i);
    max_row = i;
    
    for k = i + 1 : matrix_dimension
        if A(k,i) > max_element
            max_element = A(k,i);
            max_row = k;
        end
    end
    
    % Swap rows
    tmp = A(i,:);
    A(i,:) = A(k,:);
    A(k,:) = tmp;
    
    % Make leading cols zero
    for k = i + 1 : matrix_dimension
        factor = A(k,i)/A(i,i);
        A(k,:) = A(k,:) - factor * A(i,:);
    end
end
   
% Return ordered triangle
A_triangle = A(:,1:matrix_dimension);

% linsolve()
x = zeros(matrix_dimension);
for i = matrix_dimension : -1 : 1
    x(i) = A(i,i+1) / A(i,i);
end


end