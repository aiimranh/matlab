clc;                        %Clears the command window and homes the cursor.
clear all;                  %Clear variables and functions from memory.
clf;                        %Clear current figure.

t=-10:0.001:10;
x=@(t) 1.*(t>-5 & t<5)+0.*(abs(t)>=5);
%x=inline('1.*(t>=0)','t');
plot(t,x(t));
axis([-10 10 -2 2]);
