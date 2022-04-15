clc;
clear all;
close all;
x=input("enter the values");
n=0:length(x)-1;
n1=(1-length(x))*0.5:(length(x)-1)*0.5;
y=flip(x);
x_e=(x+y)*0.5;
x_o=(x-y)*0.5;
subplot(311)
stem(n1,x);
title('ACTUAL SIGNAL');
subplot(312)
stem(n1,x_e);
title('EVEN SIGNAL');
subplot(313)
stem(n1,x_o);
title('ODD SIGNAL');