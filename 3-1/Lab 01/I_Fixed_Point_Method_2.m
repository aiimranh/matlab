clc;
clear;

f = @(x) (2-x^2);

x1 = input('Enter initial approximation, x1:  ');
n = input('Enter no. of ierations, n: ');

x = f(x1);
while abs(x-x1) > 0.0001
    x1 = x;
    x = f(x1);
end

display(x);