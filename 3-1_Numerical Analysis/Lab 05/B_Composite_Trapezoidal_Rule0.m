clc;
clear;
close;

f = @(x) (exp(x));
a = -1;
b = 1;
n = 4;

h = (b-a)/n;

% trapezoidal rule
I1 = h *(f(a)+f(b))/2;
disp(I1);
I2 = 0;


for i=a+h:h:b-h
    I2 = I2 + h*(f(i));
end
I = I1 + I2;

fprintf('%10.5f\n',I);