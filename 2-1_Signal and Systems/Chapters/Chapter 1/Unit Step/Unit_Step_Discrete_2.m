%Unit Step Signal of Continuous time signal.

%Reference:
%Youtube: 

clc;                        %Clears the command window and homes the cursor.
clear all;                  %Clear variables and functions from memory.
clf;                        %Clear current figure.

%Defining The Original Signal {x(t)}.

n=-5:5;                     %Defining the x axis.
x=@(n) 1.*(n>=0);           %Defining the amplitude of Y axis each point of x axis from -10 to 10. [x=@(n)] equal to x(n).
stem(n,x(n));               %Plot use for Continuos signal.
axis([-10 10 -0.5 1.5]);    %AXIS([XMIN XMAX YMIN YMAX]) sets scaling for the x- and y-axes on the current plot.