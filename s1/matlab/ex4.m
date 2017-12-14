n=10;
A=2*diag(ones(1,n))-diag(ones(1,n-1),1)-diag(ones(1,n-1),-1);
det(A);
nrm1=norm(A,1);
nrm2=norm(A,2);
nrminf=norm(A,inf);
rho=max(abs(eig(A)));

[V, D]=eig(A);
figure()
plot(V)
%title(sprintf('Interpolation of f using Natural Cubic Splines with noisy observations and n =%d', n))
%ylabel('y')
%xlabel('x')
%legend('g','f','Noisy observations')
saveas(gcf,'comp','epsc')


[V,D]=eig(A);
inv(V)*A*V; % ou mieux (V\A)*V
dif = norm(D-inv(V)*A*V); % ou mieux dif = norm(D-(V\A)*V);

figure()
spy(A)
saveas(gcf,'A','epsc')
figure()
spy(D)
saveas(gcf,'D','epsc')
figure()
spy(V)
saveas(gcf,'V','epsc')