%%
clear
close
clc
disp('***** ESERCIZIO 3 *****')

A = [1:6; 5:10; 9:14; 15:20]
B = A(:, end:-1:1)
C = A(:, 2:2:end)
D = A(1:2:end, :)
E = A([1 4 3], [5 2])
F = diag(A)
disp('***** FINE *****')
pause
%%
clear
clc
disp('***** ESERCIZIO 4 *****')

dp = 5*ones(10,1);
dup = 3*ones(9,1);
dlow = -1*ones(9,1);

B = diag(dp) + diag(dup,1) + diag(dlow,-1);
B([6 9], [5 8]) = 2

disp('***** FINE *****')
pause
%%
clear
clc
disp('***** ESERCIZIO 5 *****')

x = linspace(-pi,pi);
plot(x, sin(x))
title('sen(x)')
pause

x = linspace(-1, 1);
plot(x, exp(x))
title('exp(x)')
pause

x = linspace(-5, 5);
plot(x, exp(-x.^2))
title('exp(-x^2)')
pause

x = linspace(1e-10, 4*pi);
plot(x, sin(x)./x)
title('sen(x)/x')
pause

x = linspace(1e-10, 2);
plot(x, x.*sin(x.^-1))
title('xsen(1/x)')

disp('***** FINE *****')
pause
%%
clear
close
clc
disp('***** ESERCIZIO 6 *****')

x = logspace(-1, 2);
y = sqrt((100*(1-0.01*x.^2).^2 +0.02*x.^2)./((1-x.^2).^2 + 0.1*x.^2));
 
plot(x, y, 'r', 'LineWidth', 2)
title('plot')
pause
loglog(x, y, 'b', 'LineWidth', 2)
title('loglog')

disp('***** FINE *****')
pause
%%
clear
close
clc

disp('***** ESERCIZIO 7 *****')

syms x
y(x) = piecewise(x<0, -2*x, x==0, 0, x>0, 2*x);
subs(y, x, [3 -5:5])
subs(y, x, [-1:1])

disp('***** FINE *****')
pause
%%
clear
clc

disp('***** ESERCIZIO 8 *****')

x =1;
tol =1e-10;
ter = 1;
n = 1;
tot = 0;

while ter >= tol
    tot = tot +ter;
    ter = (x^n)/factorial(n);
    n = n+1;
end
 n = n-1;
 
 ERrPnx = abs(exp(x) - tot)/abs(tot)
 
 disp('***** FINE *****')
 pause
 clear
 clc
    










