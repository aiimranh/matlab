clc;
clear;
close;

f = @(x) (sqrt(sin(x)));
a = 0;
b = pi/2;
n = 3;

h = (b-a)/4;
x1 = a+h;
x2 = a+2*h;
x3 = a+3*h;

% trapezoidal rule
I = 2*h*(7*f(a)+32*f(x1)+12*f(x2)+32*f(x3)+7*f(b))/45;

fprintf('%10.7f\n',I);