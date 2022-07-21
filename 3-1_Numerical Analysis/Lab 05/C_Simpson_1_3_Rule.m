clc;
clear;
close;

f = @(x) (x^3+1);
a = 1;
b = 2;
n = 2;

h = (b-a)/2;
x = a+h;
% trapezoidal rule
I = h *(f(a)+f(b)+4*f(x))/3;

fprintf('%10.5f\n',I);