clc;
clear;
close;

f = @(x) (sqrt(sin(x)));
a = 0;
b = pi/2;

% trapezoidal rule
I = (b-a)*(f(a)+f(b))/2;

fprintf('%10.9f\n',I);