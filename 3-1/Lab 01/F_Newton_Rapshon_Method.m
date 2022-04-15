clc; % clear command window
clear; % clear variables

f = @(x) (x^2 - 3*x + 2);
fd = @(x) (2*x - 3);

x1 = input ('x1=');

while abs(f(x1)) > 0.0001
    
 x2=x1-(f(x1)/fd(x1));
 x1=x2;
 fprintf('%9.5f \n',x2) 
 
end

display(x2);