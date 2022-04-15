clc;                        %Clears the command window and homes the cursor.
clear all;                  %Clear variables and functions from memory.
clf;                        %Clear current figure.

t=-10:0.001:10;
%x=@(t) 5.*sin(2.*pi.*t).*exp(-0.4.*t);
x=inline('5.*sin(2.*pi.*t).*exp(-0.4.*t)','t');
plot(t,x(t));
