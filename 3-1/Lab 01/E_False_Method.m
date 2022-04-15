% https://www.codesansar.com/numerical-methods/regula-falsi-or-false-position-method-using-matlab-output.htm

clc; % clear command window
clear; % clear variables

x1 = input('Enter initial value x1:');
x2 = input('Enter initial value x2:');
y = @(x) (x^2 - x - 2);
iter = 0;

if(y(x1)*y(x2) < 0)
    x0 = x1 - ((y(x1) * (x2-x1))/(y(x2)-y(x1)));
    
    while abs(y(x0)) > 0.0001
        iter = iter + 1;
        if(y(x1)*y(x0) < 0)
            x2 = x0;
            
        else
            x1 = x0;
        end
        x0 = x1 - ((y(x1) * (x2-x1))/(y(x2)-y(x1)));
    end
    
else
    disp('No roots!');
end

disp(iter);
disp(x0);