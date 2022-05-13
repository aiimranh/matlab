%Time Scaling Plot of discreate time signal.

%Reference:
%Youtube: https://www.youtube.com/watch?v=U4sXq7ml1mA

clc;                        %clears the command window and homes the cursor.
clear all;                  %Clear variables and functions from memory.
clf;                        %Clear current figure.

%Defining The Original Signal {x(n)}.

%n=-7:7;
n=-7:1:7;                                %defining the x axis how many point take value.
x1=[0 1 2 3 4 5 6 7 6 5 4 3 2 1 0];      %defining the amplitude of Y axis each point of x axis.
subplot(3,1,1);                          %subplot mean a portion of a figure.where 2 row 1 column and it's postion is row 1 column 1.
stem(n,x1);                              %plots the data sequence Y at the values specified in X.
xlabel('Time');                          %x-axis label.
ylabel('Amplitude');                     %y-axis label.
title('Original Signal x(n)');           %title  Graph title.
axis([-15 15 0 8]);                      %AXIS([XMIN XMAX YMIN YMAX]) sets scaling for the x- and y-axes on the current plot.

%Defining The Time Scaling Signal {x(2n)} that is Compressed signal.

x2=[zeros(1,4) 1 3 5 7 5 3 1 zeros(1,4)];   %ZEROS([M,N]) is an M-by-N matrix of zeros.
subplot(3,1,2);                             %subplot mean a portion of a figure.where 2 row 1 column and it's postion is row 1 column 1.
stem(n,x2);                                 %plots the data sequence Y at the values specified in X.
xlabel('Time');                             %x-axis label.
ylabel('Amplitude');                        %y-axis label.
title('Compressed Signal x(2n)');           %title  Graph title.
axis([-15 15 0 8]);                         %AXIS([XMIN XMAX YMIN YMAX]) sets scaling for the x- and y-axes on the current plot.

%Defining The Time Scaling Signal {x(n/2)} that is Expanded signal.

% n1=-14:1:14;
% x3=[0,0,1,0,2,0,3,0,4,0,5,0,6,0,7,0,6,0,5,0,4,0,3,0,2,0,1,0,0];
n1=-14:2:14;                                %defining the x axis how many point take value.
x3=[0 1 2 3 4 5 6 7 6 5 4 3 2 1 0];         %defining the amplitude of Y axis each point of x axis.
subplot(3,1,3);                             %subplot mean a portion of a figure.where 2 row 1 column and it's postion is row 1 column 1.
stem(n1,x3);                                %plots the data sequence Y at the values specified in X.
xlabel('Time');                             %x-axis label.
ylabel('Amplitude');                        %y-axis label.
title('Expanded Signal x(n/2)');            %title  Graph title.
axis([-15 15 0 8]);                         %AXIS([XMIN XMAX YMIN YMAX]) sets scaling for the x- and y-axes on the current plot.