clc;clear;

x = [0.1 0.3 0.5 0.7 0.9];
y = [0.72 1.81 2.73 3.47 3.98];

% x = [0.1 0.3 0.5];
% y = [0.72 1.81 2.73];

x0 = 0.2;

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