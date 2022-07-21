clc;
clear;
close;

f = @(x) (sqrt(sin(x)));
a = 0;
b = pi/2;
n = 3;

h = (b-a)/3;
x1 = a+h;
x2 = a+2*h;

% trapezoidal rule
I = 3*h*(f(a)+3*(f(x1)+f(x2))+f(b))/8;

fprintf('%10.7f\n',I);