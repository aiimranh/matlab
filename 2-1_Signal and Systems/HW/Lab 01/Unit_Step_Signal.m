clc;
clear all;
clf;
figure(1);
t1=-5:.001:5;
x1=heaviside(t1+2);
subplot(1,2,1);
plot(t1,x1); grid
axis([-5 1 -.5 1.5]);
title('Unit Step Signal of u(n-2)');

t2=0:.001:10;
x2=heaviside(t2-5);
subplot(1,2,2);
plot(t2,x2); grid
axis([0 10 -.5 1.5]);
title('Unit Step Signal of u(n+5)');