n = 1000;
a11 = 1;
a12 = ones(1, n-1);
a21 = ones(n-1, 1);
a22 = -eye(n-1,n-1);
A = [a11,a12;a21,a22];

[L,U,P] = lu(A);

figure(1)
spy(L)
saveas(gcf,'L','epsc')
figure(2)
spy(U)
saveas(gcf,'U','epsc')

P = zeros(n,n);
P(1, n) = 1;
P(n, 1) = 1;
P(2:n-1, 2:n-1) = eye(n-2,n-2);
tildeA = P*A*P;

[tildeL, tildeU] = lu(tildeA);
figure(3)
spy(tildeL)
saveas(gcf,'tildeL','epsc')
figure(4)
spy(tildeU)
saveas(gcf,'tildeU','epsc')

sparseU = sparse(U);
sparseL = sparse(L);
sparse_tildeU = sparse(tildeU);
sparse_tildeL = sparse(tildeL);
whos