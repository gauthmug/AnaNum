function [ElByElProd, ScalProd, v] = operations(x,y)
%
% [ELBYELPROD] = OPERATIONS(X,Y) is the element by element product of vectors X
%                and Y. NOTE: X and Y can be row or column vectors.
% [ELBYELPROD, SCALPROD] = OPERATIONS(X,Y) returns also the scalar product of
%                          vectors X and Y.
% [ELBYELPROD, SCALPROD, V] = OPERATIONS(X,Y) returns also the vector V
%                             which is defined as: V(1) = X(1)Y(n)
%                                                  V(2) = X(2)Y(n-1)
%                                                      ...
%                                                  V(N) = X(N)Y(1)

size_x = size(x); 
size_y = size(y);

if (size_x(1) ~= size_y(1) || size_x(2) ~= size_y(2))
    disp('!!! ERROR: vectors size is different !!!')
    return
end

if (min(size_x) > 1)
    disp('!!! ERROR: X and Y are matrices !!!')
    return
end

ElByElProd = x.*y;

if (size_x(2) >= size_x(1))
    ScalProd = x*y';
else
    ScalProd = x'*y;
end

n = length(x);
v = x.*y(end:-1:1);
%% On peut aussi utiliser une boucle for:
% v = [ ];
% for i = 1:n
% v = [v x(i)*y(n-i+1)];
% end
                                                   
return