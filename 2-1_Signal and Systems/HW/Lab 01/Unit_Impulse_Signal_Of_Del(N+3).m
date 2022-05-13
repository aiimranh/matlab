% plotting unit impulse signal of u(n+3)
clc;
clear all;
clf;
t1=-2:1:8;
x1=[zeros(1,5),1,zeros(1,5)];
figure(1);
plot(t1,x1);
stem(t1,x1);
axis([-2 8 -.5 1.5]);
xlabel('Time');
ylabel('Amplitude');
title('Unit impulse Signal of del(n+3)'); 