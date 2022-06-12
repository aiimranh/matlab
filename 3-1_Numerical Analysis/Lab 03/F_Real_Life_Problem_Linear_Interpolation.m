clc;
clear;

x = [0.1 0.3 0.5 0.7 0.9];
f = [0.72 1.81 2.73 3.47 3.98];

point = 0.8;
len = length(x);

for k = 1:len
    if point < x(1,k)
        i = k-1;disp(i);
        j = k;disp(j);
        break
    end
end

result = f(i) + (point - x(i))*(f(j)-f(i))/(x(j)-x(i));
disp(result);

