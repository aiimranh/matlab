%The Signum Function of Continuous time signal.

%Reference:

clc;                        %Clears the command window and homes the cursor.
clear all;                  %Clear variables and functions from memory.
clf;                        %Clear current figure.


%Defining The Original Signal {x(t)}.

t=-10:0.001:10;                      %Defining x axis.
x=@(t) 1.*(t>0)+(-1).*(t<0)+0.*(t==0);    %Defining y axis.
plot(t,x(t));                          %Ploting the graph. 
axis([-10 10 -2 2]);                  %AXIS([XMIN XMAX YMIN YMAX]) sets scaling for the x- and y-axes on the current plot.

