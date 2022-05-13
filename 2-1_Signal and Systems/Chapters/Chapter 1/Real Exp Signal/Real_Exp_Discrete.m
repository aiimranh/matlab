%The Real Exp Function of Discrete time signal.

%Reference:

clc;                        %Clears the command window and homes the cursor.
clear all;                  %Clear variables and functions from memory.
clf;                        %Clear current figure.


%Defining The Original Signal {x(t)}.
d=1;d1=-1;
n=-10:10;                      %Defining x axis.
x=@(n) exp(d*n);                    %Defining y axis.
x1=@(n) exp(d1*n);
subplot(211);
stem(n,x(n));
axis([-100 100 -2 2]);%Ploting the graph.
subplot(212);
stem(n,x1(n));
axis([-100 100 -2 2]);                  %AXIS([XMIN XMAX YMIN YMAX]) sets scaling for the x- and y-axes on the current plot.

