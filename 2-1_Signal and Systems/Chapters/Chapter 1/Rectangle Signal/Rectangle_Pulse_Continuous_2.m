%The Rectangle Pulse of Discrete time signal.

%Reference:
%MathWorks: https://www.mathworks.com/matlabcentral/answers/72902-generating-discrete-time-rectangular-wave

clc;                        %Clears the command window and homes the cursor.
clear all;                  %Clear variables and functions from memory.
clf;                        %Clear current figure.


%Defining The Original Signal {x(n)}.

t=-10:0.001:10;                           %Defining x axis.
y=@(t) 1.*(abs(t)<=5)+0.*(abs(t)>5);                         %Ploting the graph. 
plot(t,y(t));
axis([-10 10 -1 2]);                  %AXIS([XMIN XMAX YMIN YMAX]) sets scaling for the x- and y-axes on the current plot.

