f=@ (x) x.^2/2.*sin(x);
x1 = linspace(1,20,10);
x2 = linspace(1,20,20);
x3 = linspace(1,20,100);

figure
plot(x1,f(x1),'r')
hold on
plot(x2,f(x2),'g')
plot(x3,f(x3),'m')
legend('10 points','20 points','100 points')
xlabel('x')
ylabel('f(x)')
saveas(gcf,'f5','epsc')