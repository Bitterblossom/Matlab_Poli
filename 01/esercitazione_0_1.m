%%
clear
close
clc

disp('***** ESERCIZIO 1 *****')

a = 1.483593
b = 1.484111
s = a-b
a_ = 1.4836
b_ = 1.4841
s_ = a_ - b_
er = abs(s-s_)/abs(s)

disp('***** FINE *****')
pause
%%
clear
clc

disp('***** ESERCIZIO 3 *****')

M = 40;
x = zeros(M, 1);
x(1) = 2;
for n = 2:M
    x(n) = 2^(n-1/2)*sqrt(1-sqrt(1-4^(1-n)*x(n-1)^2));
end
er = abs(pi-x)/abs(pi);
semilogy(1:M, er, 'LineWidth', 2)
legend('con cancellazione')
hold on 
pause
%espressione equivalente
x2 = zeros(M, 1);
x2(1) = 2;
for n = 2:M
    x2(n) = x2(n-1)*sqrt(2/(1+sqrt(1-4^(1-n)*x2(n-1)^2)));
end
er2 = abs(pi-x2)/abs(pi);
semilogy(1:M, er2, 'r', 'LineWidth', 2);
xlabel('n')
ylabel('errore relativo')
legend('con cancellazione', 'senza cancellazione')

disp('***** FINE *****')
pause
%%
close
clear
clc

disp('***** ESERCIZIO 4 *****')

x = pi/4;
k = 1:50;
h = 2.^(-k);
r = (sin(x+h)-sin(x))./h;

err = abs(cos(x) - r)/abs(cos(x));

loglog(h, err, 'r', 'LineWidth', 2)
pause
hold on
%usiamo le formule di prostaferesi
r2 = 2*sin(h/2).*cos((2*x+h)/2)./h;
err2 = abs(cos(x)-r2)/abs(cos(x));
loglog(h, err2, 'b', 'LineWidth', 2)
ylabel('errore relativo')
xlabel('h')
legend('con cancellazione', 'senza cancellazione')

disp('***** FINE *****')
pause
clear
close
clc




