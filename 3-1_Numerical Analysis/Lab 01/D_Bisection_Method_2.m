clc;
clear;

x1 = input('Enter initial value x1:');
x2 = input('Enter initial value x2:');
y = @(x) (x^2 - 4.*x - 10);
iter = 0;

if(y(x1)*y(x2) < 0)
    while abs((x2-x1)/x2) > 0.0001
        x0 = (x1+x2)/2;
        iter = iter + 1;
        
        if(y(x1)*y(x0) < 0)
            x2 = x0;
            
        else
            x1 = x0;
        end 
    end  
else
    disp('No roots!');
end

disp(iter);
disp(x0);