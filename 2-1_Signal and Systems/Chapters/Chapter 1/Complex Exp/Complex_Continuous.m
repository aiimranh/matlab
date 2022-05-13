%The Real Exp Function of Continuous time signal.

%Reference:

clc;                        %Clears the command window and homes the cursor.
clear all;                  %Clear variables and functions from memory.
clf;                        %Clear current figure.


%Defining The Original Signal {x(t)}.
d=1;d1=-1;
w=2;
t=-10:0.01:10;                      %Defining x axis.
x=@(t) exp((d+j*w)*t);    %Defining y axis.
x1=@(t) exp((d1+j*w)*t);
%subplot(211);
%plot(t,x(t));                          %Ploting the graph.
%plot(x, real(f(x)))
%plot(t, real(x(t)), 'b', t, imag(x(t)), 'r');
plot3(t,real(x(t)),imag(x(t)));
%axis([-100 100 -2 2]);
%subplot(212);
%plot(t,x1(t));
%plot(t, real(x1(t)), 'b', t, imag(x1(t)), 'r');
%axis([-100 100 -2 2]);                  %AXIS([XMIN XMAX YMIN YMAX]) sets scaling for the x- and y-axes on the current plot.

