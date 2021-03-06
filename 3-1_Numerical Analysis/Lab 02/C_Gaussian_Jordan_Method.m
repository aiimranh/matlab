% "Gauss Jordan Method elimination using MATLAB"
% https://www.youtube.com/watch?v=kMApKEKisKE
% example 7.4

a = [2 4 -6 -8;
    1 3 1 10;
    2 -4 -2 -12;];

% Gauss-Jordan method
[m,n]=size(a);
for j=1:m-1
    for z=2:m
        if a(j,j)==0
            t=a(1,:);a(1,:)=a(z,:);
            a(z,:)=t;
        end
    end
    for i=j+1:m
        a(i,:)=a(i,:)-a(j,:)*(a(i,j)/a(j,j));
    end
end

for j=m:-1:2
    for i=j-1:-1:1
        a(i,:)=a(i,:)-a(j,:)*(a(i,j)/a(j,j));
    end
end

for s=1:m
    a(s,:)=a(s,:)/a(s,s);
    x(s)=a(s,n);
end
disp('Gauss-Jordan method:');
disp(a);
disp(x);