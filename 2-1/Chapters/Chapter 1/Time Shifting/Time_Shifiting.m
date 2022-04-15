clc;
clear all;
close all;
clf;
t=-4:0.001:4;
x=@(t) 1.*(abs(t)<=2)+0.*(abs(t)>2);
subplot('311');
plot(t,x(t));
xlabel('time');
ylabel('Amplitude');
title('Time_shifting');
axis([-5 5 -.5 1.5]);

t1=t+2;//t2=t-2;
subplot('312');
plot(t1,x(t));
xlabel('time');
ylabel('Amplitude');
title('Time_shifting(delay)');
axis([-5 5 -.5 1.5]);

t2=t-2;
subplot('313');
plot(t2,x(t));
xlabel('time');
ylabel('Amplitude');
title('Time_shifting(advanced)');
axis([-5 5 -.5 1.5]);

