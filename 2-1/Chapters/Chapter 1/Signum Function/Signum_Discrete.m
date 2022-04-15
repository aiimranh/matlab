%The Signum Function of Descrete time signal.

%Reference:

clc;                        %Clears the command window and homes the cursor.
clear all;                  %Clear variables and functions from memory.
clf;                        %Clear current figure.


%Defining The Original Signal {x(n)}.

n=-10:10;                      %Defining x axis.
x=@(n) 1.*(n>0)+(-1).*(n<0)+0.*(n==0);    %Defining y axis.
stem(n,x(n));                          %Ploting the graph. 
axis([-10 10 -2 2]);                  %AXIS([XMIN XMAX YMIN YMAX]) sets scaling for the x- and y-axes on the current plot.

