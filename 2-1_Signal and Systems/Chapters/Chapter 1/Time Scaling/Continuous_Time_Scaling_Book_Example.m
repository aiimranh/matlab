%Time Scaling Plot of Continuous time signal.

%Reference:
%Youtube: https://www.youtube.com/watch?v=U4sXq7ml1mA

clc;                        %clears the command window and homes the cursor.
clear all;                  %Clear variables and functions from memory.
clf;                        %Clear current figure.

%Defining The Original Signal {x(t)}.

t=-4:0.001:4;                                %defining the x axis how many point take value.
%x1=[0 0 -2 -1 0 1 2 0 0];      %defining the amplitude of Y axis each point of x axis.
x1=@(t) t.*(t>=-2 & t<=2)+ 0.*(t<-2 & t>2);
subplot(3,1,1);                          %subplot mean a portion of a figure.where 2 row 1 column and it's postion is row 1 column 1.
plot(t,x1(t));                              %plots the data sequence Y at the values specified in X.
xlabel('Time');                          %x-axis label.
ylabel('Amplitude');                     %y-axis label.
title('Original Signal x(t)');           %title  Graph title.
axis([-4 4 -4 4]);                      %AXIS([XMIN XMAX YMIN YMAX]) sets scaling for the x- and y-axes on the current plot.

%Defining The Time Scaling Signal {x(2t)} that is Compressed signal.

t2=-4:0.001:4;                              %defining the x axis how many point take value.
subplot(3,1,2);                             %subplot mean a portion of a figure.where 2 row 1 column and it's postion is row 1 column 1.
plot(t2,x1(t));                              %plots the data sequence Y at the values specified in X.
xlabel('Time');                             %x-axis label.
ylabel('Amplitude');                        %y-axis label.
title('Compressed Signal x(2t)');           %title  Graph title.
axis([-4 4 -4 4]);                          %AXIS([XMIN XMAX YMIN YMAX]) sets scaling for the x- and y-axes on the current plot.

%Defining The Time Scaling Signal {x(t/2)} that is Expanded signal.

t3=-4:0.001:4;                                %defining the x axis how many point take value.
subplot(3,1,3);                          %subplot mean a portion of a figure.where 2 row 1 column and it's postion is row 1 column 1.
plot(t3,x1(t));                              %plots the data sequence Y at the values specified in X.
xlabel('Time');                          %x-axis label.
ylabel('Amplitude');                     %y-axis label.
title('Expanded Signal x(t)');           %title  Graph title.
axis([-4 4 -4 4]);                      %AXIS([XMIN XMAX YMIN YMAX]) sets scaling for the x- and y-axes on the current plot.
