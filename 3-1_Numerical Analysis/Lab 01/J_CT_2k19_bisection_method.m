% Problem 31: The flux equation of an iron core electric circuit is given by
%		f(Φ) = 10 - 2.1Φ -0.01Φ^3
%	the steady state value of flux is obtained by solving the equation f(Φ) = 0.
%	Use a suitable method to estimate the steady state Φ.
%	Assume initial value Φ1=4 Nm and Φ2=4.5 Nm.
clc;
clear;

x1 = input('Enter initial value x1:');
x2 = input('Enter initial value x2:');

y = @(x) (10 - 2.1*x - 0.01*x^3);
iter = 0;

fprintf('\n\ny(x1)=%13.4f y(x2)=%13.4f\n',y(x1),y(x2))
fprintf('%18s %13s %13s %13s %13s %13s\r\n','abs((x2-x1)/x2)','x0','y(x1)','y(x0)','x1','x2');

if(y(x1)*y(x2) < 0)
    while abs((x2-x1)/x2) > 0.0001
        x0 = (x1+x2)/2;
        iter = iter + 1;
        
        if(y(x1)*y(x0) < 0)
            x2 = x0;
        else
            x1 = x0;
        end
        fprintf('%18.4f %13.4f %13.4f %13.6f %13.4f %13.4f\n',abs((x2-x1)/x2),x0,y(x1),y(x0),x1,x2);
    end  
else
    disp('No roots!');
end

disp(iter);
disp(x0);