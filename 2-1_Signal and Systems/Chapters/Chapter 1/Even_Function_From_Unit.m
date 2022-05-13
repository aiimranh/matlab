clc;                        %Clears the command window and homes the cursor.
clear all;                  %Clear variables and functions from memory.
clf;                        %Clear current figure.

t=-20:0.001:20;             
u=@(t) 1.*(t>0);
y=u(t+2)-u(t-1)-u(-t+2)+u(-t-1);
figure(1);
plot(t,t/2.*y);              
axis([-10 10 -3 3]);