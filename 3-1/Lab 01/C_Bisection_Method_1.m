clc; % clear command window
clear; % clear variables

x1 = input('Enter initial value x1:');
x2 = input('Enter initial value x2:');

y1 = x1^2 - 4*x1 - 10;
y2 = x2^2 - 4*x2 - 10;

iter = 0;

if(y1*y2 > 0 )
    disp('No Roots within x1 & x2');
else
    x0 = (x1+x2)/2;
    y0 = x0^2 - 4*x0 - 10;
    while abs((x2-x1)/x2) > 0.0001
        if(y1*y0 < 0)
            x2 = x0;
            y2 = y0;
        else
            x1 = x0;
            y1 = y0;
        end
        x0 = (x1+x2)/2;
        y0 = x0^2 - 4*x0 - 10;
        iter = iter + 1;
    end
    display(x0);
    display(iter);
end