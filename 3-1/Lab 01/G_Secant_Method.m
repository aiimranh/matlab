clc;
clear;

f = @(x) (x^2 - 4*x - 10);

x1=input ('x1=');
x2=input ('x2=');

while abs(x1-x2) > 0.0001
    
 x3=x2-((f(x2)*(x1-x2)/(f(x1)-f(x2))));
 
 f3=f(x3);
 fprintf('%13.4f %13.4f %13.6f %13.4f \n',x1,x2,x3,f3)
 
 x1=x2;
 x2=x3;
 
end