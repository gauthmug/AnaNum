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

...
                                                   
return