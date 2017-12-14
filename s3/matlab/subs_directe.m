function [x] = subs_directe(L,b)
%
% [X] = SUBS_DIRECTE(L,B) resout le systeme triangulaire inferieure L*X = B
%

x = zeros(size(b,1), 1);

[m,n]=size(L);

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

l = min(diag(abs(L)));

if l == 0
    disp('Error: the matrix is singular');
    x = [];
    return
end

for j=1:n
    x(j)=(b(j) - L(j,1:j-1)*x(1:j-1))/L(j,j);
end

return

end
