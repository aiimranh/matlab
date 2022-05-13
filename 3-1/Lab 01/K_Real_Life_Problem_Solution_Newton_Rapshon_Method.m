% Problem 31: The flux equation of an iron core electric circuit is given by
%		f(Φ) = 10 - 2.1Φ -0.01Φ^3
%	the steady state value of flux is obtained by solving the equation f(Φ) = 0.
%	Use bisection method to estimate the steady state Φ.


clc; % clear command window
clear; % clear variables

f = @(x) (10 - 2.1*x - 0.01*x^3);
fd = @(x) (- 2.1*x - 0.03*x^2);

x1 = input ('x1=');

while abs(f(x1)) > 0.0001
    
 x2=x1-(f(x1)/fd(x1));
 x1=x2;
 fprintf('%9.5f \n',x2) 
 
end

display(x2);