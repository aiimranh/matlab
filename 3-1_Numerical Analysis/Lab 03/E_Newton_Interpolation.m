clc;
clear;

x=[1 2 3 4];
y=[0 0.3010 0.4771 0.6021];


n = length(x);

xf = 2.5;

L=zeros(n);

for k=1:n
   L(k,1)=y(k);
end

for k=2:n 
  for m=1:n-k                     
       L(m,k)=(L(m,k-1)-L(m+1,k-1))/(x(m)-x(m+(k-1)));
  end
end

s=1;t=0;sol=y(1);

for k=2:n
   s=s*(xf-x(k-1));
   t=s*L(1,k);
   sol=sol+t;
end
 disp(sol);
