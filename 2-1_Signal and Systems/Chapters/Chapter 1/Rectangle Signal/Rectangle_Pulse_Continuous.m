%The Rectangle Pulse of Continuous time signal.

%Reference:
%MathWorks: https://www.mathworks.com/matlabcentral/answers/72902-generating-discrete-time-rectangular-wave

clc;                        %Clears the command window and homes the cursor.
clear all;                  %Clear variables and functions from memory.
clf;                        %Clear current figure.


%Defining The Original Signal {x(t)}.

t=-10:0.01:10;                      %Defining x axis.
y=heaviside(t+5)-heaviside(t-5);    %Defining y axis.
plot(t,y);                          %Ploting the graph. 
axis([-5 6 -1 6]);                  %AXIS([XMIN XMAX YMIN YMAX]) sets scaling for the x- and y-axes on the current plot.

