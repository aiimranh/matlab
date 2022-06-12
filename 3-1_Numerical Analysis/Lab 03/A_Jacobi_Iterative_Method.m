% jacobi method
% ref : 
% example 8.1

clc;
clear;
EPS = 0.0001;

a = [2 1 1; 3 5 2; 2 1 4;];
b = [5 15 8]';
m = length(b);

iter = 0;

for i=1:m
    xo(i) = b(i)/a(i,i);
end

k = 1;
while k == 1
    iter = iter + 1;
    k = 0;
    for  i = 1:m
        bn = b(i);
        for j = 1:m
            if (i~=j)
                bn = bn - a(i,j)*xo(j);
            end
        end
        x(i) = bn/a(i,i);
%         disp(x(i));
        if (abs((x(i)-xo(i))/x(i)) > EPS)
            k = 1;
        end
        xo(i) = x(i);
    end
end
disp(x);
disp(iter);
            