%Time Shifting Plot of discreate time signal.

%Reference:
%Youtube: https://www.youtube.com/watch?v=3s3SzMEp_c4

clc;                        %clears the command window and homes the cursor.
clear all;                  %Clear variables and functions from memory.
clf;                        %Clear current figure.

%Defining The Original Signal {x(n)}.

%n=0:4;
n=0:1:4;                    %defining the x axis how many point take value.
x=[0 1 2 3 3];              %defining the amplitude of Y axis each point of x axis from 0 to 4.
subplot(3,1,1);             %subplot mean a portion of a figure.where 2 row 1 column and it's postion is row 1 column 1.
stem(n,x);                  %plots the data sequence Y at the values specified in X.
xlabel('Time');             %x-axis label.
ylabel('Amplitude');        %y-axis label.
title('Original Signal');   %title  Graph title.
axis([-3 7 0 4]);           %AXIS([XMIN XMAX YMIN YMAX]) sets scaling for the x- and y-axes on the current plot.

%Defining The Time Shifting Signal {x(n-2)} that is delay time.

%m=n-(-2);
n1=n+2;                     %Time Shifting to 2
subplot(3,1,2);             %subplot mean a portion of a figure.where 2 row 1 column and it's postion is row 1 column 1.
stem(n1,x);                 %Stem use for discrete signal plots the data sequence Y at the values specified in X.
xlabel('Time');             %x-axis label.
ylabel('Amplitude');        %y-axis label.
title('Delay Signal');    %title  Graph title.
axis([-3 7 0 4]);           %AXIS([XMIN XMAX YMIN YMAX]) sets scaling for the x- and y-axes on the current plot.

%Defining The Time Shifting Signal {x(n+2)} that is Advance time.

%m=n-(2);
n2=n-2;                     %Time Shifting to 2
subplot(3,1,3);             %subplot mean a portion of a figure.where 2 row 1 column and it's postion is row 1 column 1.
stem(n2,x);                 %Stem use for discrete signal plots the data sequence Y at the values specified in X.
xlabel('Time');             %x-axis label.
ylabel('Amplitude');        %y-axis label.
title('Advance Signal');    %title  Graph title.
axis([-3 7 0 4]);           %AXIS([XMIN XMAX YMIN YMAX]) sets scaling for the x- and y-axes on the current plot.