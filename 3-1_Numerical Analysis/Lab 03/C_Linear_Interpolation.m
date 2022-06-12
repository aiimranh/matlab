clc;
clear;

x = [1 2 3 4 5];
f = [1 1.4142 1.7321 2 2.2361];

point = 2.5;
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

