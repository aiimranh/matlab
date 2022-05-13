%Unit Impulse Signal of Discrete time signal.

%Reference:
%Youtube: https://www.youtube.com/watch?v=s_9z4Yx3Pd8
%Youtube: https://www.youtube.com/watch?v=B-dHgVoYB78

clc;                        %Clears the command window and homes the cursor.
clear all;                  %Clear variables and functions from memory.
clf;                        %Clear current figure.

%Defining The Original Signal {x(n)}.

n=-20:1:20;                     %Defining the x axis.
x=[zeros(1,20) 1 zeros(1,20)];
%x=[0,0,...,0,1,0,...,0];
stem(n,x);                      %Stem use for discrete signal.
axis([-20 20 -0.5 1.5]);        %AXIS([XMIN XMAX YMIN YMAX]) sets scaling for the x- and y-axes on the current plot.

