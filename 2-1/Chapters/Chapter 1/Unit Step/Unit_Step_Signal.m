%Unit Step Signal of Continuous and Discrete time signal.

%Reference:
%MathWorks: https://www.mathworks.com/matlabcentral/fileexchange/42713-continuous-unit-step-and-discrete-unit-step?focused=3790938&tab=function

clear all;                      %Clear variables and functions from memory.
close all;                      %Closes all the image windows that are currently open.
clc;                            %Clears the command window and homes the cursor.

N=20;                           %Taking A limit;
t=0:1:N-1;                      %Defining the x axis.
y=ones(1,N);                    %Defining the amplitude of Y axis.
subplot(2,1,1);                 %Subplot mean a portion of a figure.
plot(t,y);                      %Plot use for Continuous Signal plotting
axis([-1 20 -0.5 1.5]);         %AXIS([XMIN XMAX YMIN YMAX]) sets scaling for the x- and y-axes on the current plot.
ylabel('amplitude');            %x-axis label.
xlabel('time--->');                     %y-axis label.
title('continuous unit step signal');   %title  Graph title.
disp(y);                                %DISP(X) displays array X without printing the array name.                             

n=t;
subplot(2,1,2);
stem(n,y);
ylabel('amplitude');
xlabel('number of samples--->');
title('discrete unit step signal');
disp(y);
axis([-1 20 -0.5 1.5]);