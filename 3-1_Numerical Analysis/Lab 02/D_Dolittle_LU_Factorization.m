% example 7.5
clc;
clear;

A=[3 2 1;2 3 2;1 2 3;];
[m,n]=size(A);

% if m~=n 
%     disp('Matrix must be square')
%     beep
% end

U=zeros(m);
L=zeros(m);
for j=1:m
    L(j,j)=1;
end
for j=1:m
    U(1,j)=A(1,j);
end
for i=2:m
    for j=1:m
        for k=1:i-1
            s1=0;
            if k==1
                s1=0;
            else
            for p=1:k-1
                s1=s1+L(i,p)*U(p,k);
            end
            end
            L(i,k)=(A(i,k)-s1)/U(k,k);
        end
         for k=i:m
             s2=0;
           for p=1:i-1
               s2=s2+L(i,p)*U(p,k);
           end
           U(i,k)=A(i,k)-s2;
         end
    end
end
disp('The matrix to be decomposed is')
disp(A);
disp('The Lower Triangular Matrix is')
disp(L);
disp('The Upper Triangular Matrix is')
disp(U);