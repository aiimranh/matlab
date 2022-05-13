% example 7.5
clc;
clear;

A=[3 2 1;2 3 2;1 2 3;];
B1=[10 14 14];
B=B1';
[m,n]=size(A);
ordo=length(A);

% if m~=n
%     disp('Matriks harus persegi');
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
Y1(1)=B(1);
for k=2:ordo
    sigma1=0;
    for j=1:k-1
    sigma1=sigma1+L(k,j)*Y1(j);
    Y1(k)=B(k)-sigma1;
    end
end
Y=Y1';
X(ordo)=Y(ordo)/U(ordo,ordo);
for k=ordo-1:-1:1
    sigma2=0;
    for j=k+1:ordo
        sigma2=sigma2+U(k,j)*X(j);
        X(k)=(Y(k)-sigma2)/U(k,k);
    end
end
disp('Matriks A')
disp(A);
disp('Matriks L')
disp(L);
disp('Matriks U')
disp(U);
disp('Matriks Y')
disp(Y);
disp('Matriks X')
disp(X');