clc;
clear;
close;

f = @(x) (1/x);
a = 1;
b = 2;
level = input("number of level:") - 1;

h = (b-a);

% R00
R(1,1) = ((h*(f(a)+f(b)))/2);
% disp(R00);

% R10
R(2,1) = R(1,1)/2;
temp = minifun(1,a,b);
R(2,1) = R(2,1) + temp;



% R20
for i = 3:level+1
    R(i,1) = R(i-1,1)/2;
    temp = minifun2(2,a,b);
    R(i,1) = R(i,1) + temp;
end


f1 = @(i,j) (((4^(j-1)) * R(i,j-1) - R(i-1,j-1))/((4^(j-1)) - 1));
for j=2:level+1
    for i = j:level+1
        R(i,j) = f1(i,2);
    end
end
fprintf('%13f\n',R(1,1));
fprintf('%13f %13f\n',R(2,1),R(2,2));
for i=3:level+1
    for j=1:i
        fprintf('%13f ',R(i,j));
    end
    fprintf('\n');
end