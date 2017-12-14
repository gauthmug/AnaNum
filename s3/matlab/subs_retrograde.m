function [x] = subs_retrograde(U,b)
%
% [X] = SUBS_RETROGRADE(L,B) resout le systeme triangulaire superieur U*X = B
%

x = zeros(size(b,1), 1);

[m,n]=size(U);

if m ~= n
    disp('Error: the matrix is not square!');
    x = [];
    return
end

if m ~= length(b)
    disp(['Error: the dimension of the matrix and of the vector' ...
        ' are not consistent!']);
    x = [];
    return
end

l = min(diag(abs(U)));

if l == 0
    disp('Error: the matrix is singular');
    x = [];
    return
end

for j=n:-1:1
    x(j)=(b(j) - U(j,j+1:n)*x(j+1:n))/U(j,j);
end

return

end
