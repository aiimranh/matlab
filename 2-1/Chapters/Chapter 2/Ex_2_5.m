clc;                        %Clears the command window and homes the cursor.
clear all;                  %Clear variables and functions from memory.
clf;                        %Clear current figure.

t=-10:0.001:10;
u=@(t) 1.*(t>=0)+0.*(t<0);
x=@(t) (u(t)-u(t-2));
plot(t,x(t));
axis([-10 10 -2 2]);
