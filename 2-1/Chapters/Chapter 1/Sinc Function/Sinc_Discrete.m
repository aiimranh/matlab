%The Real Exp Function of Continuous time signal.

%Reference:

clc;                        %Clears the command window and homes the cursor.
clear all;                  %Clear variables and functions from memory.
clf;                        %Clear current figure.


%Defining The Original Signal {x(t)}.
pi=3.14;
n=-10:10;                      %Defining x axis.
%x=@(t) (sin(pi*t))/(pi*t);    %Defining y axis.
y=sinc(n);
%plot(t,x(t));                          %Ploting the graph.
stem(n,y);
axis([-10 10 -2 2]);

