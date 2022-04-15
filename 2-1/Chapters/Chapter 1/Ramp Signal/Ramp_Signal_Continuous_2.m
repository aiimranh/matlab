%The Ramp Signal of Continuous time signal.

%Reference:

clc;                        %Clears the command window and homes the cursor.
clear all;                  %Clear variables and functions from memory.
clf;                        %Clear current figure.

%Defining The Original Signal {x(n)}.

t=-20:0.001:20;             %defining the x axis.
y=heaviside(t);             %HEAVISIDE unit Step function.
r=@(t) t.*y;                %Defining the amplitude of Y axis. [x=@(t)] equal to x(t).
plot(t,r(t));               %Plot use for continuous signal.
axis([-5 6 -1 6]);          %AXIS([XMIN XMAX YMIN YMAX]) sets scaling for the x- and y-axes on the current plot.

