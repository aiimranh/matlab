clc; % clear command window
clear; % clear variables

x1 = input('Enter initial value x1:');
x2 = input('Enter initial value x2:');

y = @(x) (x^2 - 4.*x - 10);

display(y(x1));
display(y(x2));