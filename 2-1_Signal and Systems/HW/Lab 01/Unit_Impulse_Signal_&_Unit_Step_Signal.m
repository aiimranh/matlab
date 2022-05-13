clc;
clear all;
clf;
t1=-2:1:8;
x1=[zeros(1,5),1,zeros(1,5)];
figure(1);
subplot(2,3,1);
plot(t1,x1);
stem(t1,x1);
axis([-2 8 -.5 1.5]);
xlabel('Time');
ylabel('Amplitude');
title('Unit impulse Signal of del(n+3)'); 

t1=-6:1:4;
x1=[zeros(1,5),1,zeros(1,5)];
figure(1);
subplot(2,3,2);
plot(t1,x1);
stem(t1,x1);
axis([-6 4 -.5 1.5]);
xlabel('Time');
ylabel('Amplitude');
title('Unit impulse Signal of del(n-1)'); 

t1=-7:1:3;
x1=[zeros(1,4),1,0,1,zeros(1,4)];
figure(1);
subplot(2,3,3);
plot(t1,x1);
stem(t1,x1);
axis([-7 3 -.5 1.5]);
xlabel('Time');
ylabel('Amplitude');
title('Unit impulse Signal of del(n-3)+del(n-1)'); 


t1=-5:.001:5;
x1=heaviside(t1+2);
subplot(2,3,4);
plot(t1,x1); grid
axis([-5 1 -.5 1.5]);
title('Unit Step Signal of u(n-2)');

t2=0:.001:10;
x2=heaviside(t2-5);
subplot(2,3,5);
plot(t2,x2); grid
axis([0 10 -.5 1.5]);
title('Unit Step Signal of u(n+5)');