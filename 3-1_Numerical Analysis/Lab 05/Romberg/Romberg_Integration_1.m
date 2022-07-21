clc;
clear;
close;

f = @(x) (x^3+1);
a = 1;
b = 2;

h = (b-a);

% R00
R00 = ((h*(f(a)+f(b)))/2);
% disp(R00);

% R10
R10 = R00/2;

temp = minifun(1,a,b);
R10 = R10 + temp;

% R20
R20 = R10/2;
temp = minifun2(2,a,b);
R20 = R20 + temp;

% R11
R11 = comfun(1,R10,R00);
R21 = comfun(1,R20,R10);
R22 = comfun(2,R21,R11);

fprintf('%10.7f\n',R22);
mat = [R00 0 0;R10 R11 0;R20 R21 R22];
disp(mat)
