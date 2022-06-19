% example 13.4
clc;
clear;

h = 0.25;
value = 2;
x = 1;
y1 = 2;

while x<value
    m = 2*y1/x;
    y2 = y1+h*m;
    
    %update
    x = x+h;
    y1 = y2;
end
disp(y2);