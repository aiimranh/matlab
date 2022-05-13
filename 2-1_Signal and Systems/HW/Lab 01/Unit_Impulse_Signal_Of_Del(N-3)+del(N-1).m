% plotting unit impulse signal of u(n+3)
clc;
clear all;
clf;
t1=-7:1:3;
x1=[zeros(1,4),1,0,1,zeros(1,4)];
figure(1);
plot(t1,x1);
stem(t1,x1);
axis([-7 3 -.5 1.5]);
xlabel('Time');
ylabel('Amplitude');
title('Unit impulse Signal of del(n-3)+del(n-1)'); 