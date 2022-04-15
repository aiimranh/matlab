%Unit Step Signal of Continuous time signal.

%Reference:
%Youtube: https://www.youtube.com/watch?v=YMveWtrCOds
%Youtube: https://www.youtube.com/watch?v=YF-TdFzwJpY

clc;                        %Clears the command window and homes the cursor.
clear all;                  %Clear variables and functions from memory.
clf;                        %Clear current figure.

%Defining The Original Signal {x(t)}.

n=-5:5; %n=-5:1:5;          %defining the x axis.
y=1*heaviside(n);             %HEAVISIDE unit Step function.
stem(n,y);                  %Plot use for Continuos signal.
axis([-10 10 -0.5 1.5]);    %AXIS([XMIN XMAX YMIN YMAX]) sets scaling for the x- and y-axes on the current plot.