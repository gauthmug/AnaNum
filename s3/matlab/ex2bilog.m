for N = 10:10:120
     h = 1/N;
     A=(N-2)*(diag(2*ones(N-1,1),0)-diag(ones(N-2,1),1)-diag(ones(N-2,1),-1));
     k(N/10) = cond(A);
     disp(sprintf('N = %i: K(A) = %e',N,k(N/10)));
     % ceci pour afficher les valeurs calculees
end

figure()
plot([10:10:120], k)
xlabel('N') % x-axis label
ylabel('k(A)') % y-axis label
saveas(gcf,'ex2_lin','epsc')

figure()
loglog([10:10:120],k);
xlabel('log(N)') % x-axis label
ylabel('log(k(A))') % y-axis label
grid on
saveas(gcf,'ex2_log','epsc')