clc;
clear all;
close all;

t=-3:0.01:3;
x=@(t)exp(j*2*t).*t>0;
xe=(x(t)+x(-t))/2;
xo=(x(t)-x(-t))/2;
subplot(311); plot(t,x(t),'LineWidth',2);grid on;
xlabel('t');ylabel('amplitude');title('x(t)')
subplot(312);plot(t,xe,'LineWidth',2);grid on;
xlabel('t');ylabel('Amplitude');title('x_e(t)')
subplot(313);plot(t,xo,'LineWidth',2);grid on;
xlabel('t');ylabel('Amplitude');title('x_o(t)')
