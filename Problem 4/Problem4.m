x = 1 - 1.2e-2:1e-4:1 + 1.2e-2;
y_1 = (x-1).^7;
y_2 = x.^7 - 7*x.^6 + 21*x.^5 - 35*x.^4 + 35*x.^3 -21*x.^2 + 7*x -1;
plot(x,y_1,'red',x,y_2,'blue','linewidth',1)
xlabel('x')
ylabel('y')
axis([1-(1.2e-2) 1+(1.2e-2) (-1.2e-2).^7 (1.2e-2).^7])
title('Plot of (x - 1)^7 and its binomial expansion','FontSize',16)
legend('(x-1)^7','Binomial expansion of (x-1)^7','FontSize',14)

