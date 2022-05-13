%Unit Step Signal of Continuous time signal.

%Reference:
%Youtube: 

clc;                        %Clears the command window and homes the cursor.
clear all;                  %Clear variables and functions from memory.
clf;                        %Clear current figure.

%Defining The Original Signal {x(t)}.

t=-20:0.001:20;             %defining the x axis.
x=@(t) 1.*(t>0);            %Defining the amplitude of Y axis each point of x axis from -10 to 10. [x=@(n)] equal to x(n).
plot(t,-x(-t+2));               %Plot use for Continuos signal.
axis([-10 10 -1.5 1.5]);    %AXIS([XMIN XMAX YMIN YMAX]) sets scaling for the x- and y-axes on the current plot.

