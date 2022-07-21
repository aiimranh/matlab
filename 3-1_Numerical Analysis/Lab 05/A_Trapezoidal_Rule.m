clc;
clear;
close;

f = @(x) (x^3+1);
a = 1;
b = 2;

% trapezoidal rule
I = (b-a)*(f(a)+f(b))/2;

fprintf('%10.9f\n',I);