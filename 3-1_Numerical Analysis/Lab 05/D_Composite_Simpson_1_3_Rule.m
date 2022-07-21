clc;
clear;
close;

f = @(x) (x^3+1);
a = 1;
b = 2;
n = 4;

h = (b-a)/n;

% trapezoidal rule
I1 = h *(f(a)+f(b))/3;
I2 = 0;
I3 = 0;

for i=a+h:2*h:b-h
    I2 = I2 + (4*h*(f(i)))/3;
end

for i=a+2*h:2*h:b-h
    I3 = I3 + (2*h*(f(i)))/3;
end

I = I1 + I2 + I3;
fprintf('%10.7f\n',I);