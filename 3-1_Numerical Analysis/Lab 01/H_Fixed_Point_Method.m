clc;
clear;

f = @(x) (2-x^2);

x1 = input('Enter initial approximation, x1:  ');
n = input('Enter no. of ierations, n: ');

i = 1;
while i <= n
    x = f(x1);
    if abs(x-x1) < 0.0001
       fprintf('\nApproximate solution p = %11.8f \n\n', x)
       break;
     else
       i = i+1;
       x1 = x;
     end
 end