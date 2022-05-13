clc;                        %Clears the command window and homes the cursor.
clear all;                  %Clear variables and functions from memory.
clf;                        %Clear current figure.

t=-20:0.001:20;             
u=@(t) 1.*(t>0);
y=u(t+2);
subplot(3,2,1);
plot(t,y);              
axis([-3 3 -3 3]);

t=-20:0.001:20;             
u=@(t) 1.*(t>0);
y=-u(t-1);
subplot(3,2,2);
plot(t,y);              
axis([-3 3 -3 3]);

t=-20:0.001:20;             
u=@(t) 1.*(t>0);
y=-u(-t+2);
subplot(3,2,3);
plot(t,y);              
axis([-3 3 -3 3]);

t=-20:0.001:20;             
u=@(t) 1.*(t>0);
y=u(-t-1);
subplot(3,2,4);
plot(t,y);              
axis([-3 3 -3 3]);

t=-20:0.001:20;             
u=@(t) 1.*(t>0);
y=u(t+2)-u(t-1)-u(-t+2)+u(-t-1);
subplot(3,2,5);
plot(t,y);              
axis([-3 3 -3 3]);

t=-20:0.001:20;             
u=@(t) 1.*(t>0);
y=u(t+2)-u(t-1)-u(-t+2)+u(-t-1);
subplot(3,2,6);
plot(t,t/2.*y);              
axis([-3 3 -1.5 1.5]);