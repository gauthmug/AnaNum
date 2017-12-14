clc
clear all
close all

for n=1:10
    A = hilb(n);
    KA(n) = cond(A);
end 

figure();
semilogy([1:1:10],KA,'r');
grid;
xlabel('n');
ylabel('K2A(n)');
saveas(gcf,'KA','epsc')

for n=1:10
    A = hilb(n);
    KA(n) = cond(A);
    xex = rand(n,1);
    b = A * xex;
    x = A\b;
    err(n) = norm(x-xex)/norm(xex);
    r(n) = norm(A*x - b);
end

figure();
semilogy([1:1:10], KA, 'r', [1:1:10], err, 'b');
grid;
xlabel('n');
%ylabel('K2A(n) & err(n)');
legend('K_{2}(A)','\epsilon_{r}')
saveas(gcf,'KVSErr','epsc')

figure();
semilogy([1:1:10], KA*norm(r)/norm(b), 'r', [1:1:10], err, 'b');
grid;
xlabel('n');
%ylabel('KA*norm(r)/norm(b) & err(n)');
legend('K_{2}(A) ||r||/||b||','\epsilon_{r}')
saveas(gcf,'ErrVSTildeErr','epsc')