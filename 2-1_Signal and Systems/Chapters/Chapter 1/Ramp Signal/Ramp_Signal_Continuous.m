%The Ramp Signal of Continuous time signal.

%Reference:

clc;                        %Clears the command window and homes the cursor.
clear all;                  %Clear variables and functions from memory.
clf;                        %Clear current figure.

%Defining The Original Signal {x(n)}.

t=-5:5;                         %Defining the x axis.
x=@(t) t.*(t>0)+0.*(t<0);       %Defining the amplitude of Y axis. [x=@(t)] equal to x(t).
plot(t,x(t));                   %Plot use for continuous signal.
axis([-5 6 -1 6]);              %AXIS([XMIN XMAX YMIN YMAX]) sets scaling for the x- and y-axes on the current plot.

