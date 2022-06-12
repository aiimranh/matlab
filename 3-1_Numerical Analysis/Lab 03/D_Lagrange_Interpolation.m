clc;clear;
x = [2 3 4];
y = [1.4142 1.7321 2];

x0 = 2.5;

y0 = 0;
n = length(x);
for j = 1 : n
    t = 1;
    for i = 1 : n
        if i~=j
            t = t * (x0-x(i))/(x(j)-x(i));
        end
    end
    y0 = y0 + t*y(j);
end 
disp(y0);