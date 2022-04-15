%Unit Ramp Signal of Discrete time signal.

%Reference:

clc;                        %Clears the command window and homes the cursor.
clear all;                  %Clear variables and functions from memory.
clf;                        %Clear current figure.

%Defining The Original Signal {x(n)}.

n=-20:1:20;                     %Defining the x axis.
x=@(n) n.*(n>0)+0.*(n<0);
%x=[zeros(1,21),1,2,3,....,20];
%x=[0,0,0,....,0,1,2,3,...,20];
stem(n,x(n));                   %Stem use for discrete signal.
axis([-20 20 -0.5 1.5]);        %AXIS([XMIN XMAX YMIN YMAX]) sets scaling for the x- and y-axes on the current plot.

