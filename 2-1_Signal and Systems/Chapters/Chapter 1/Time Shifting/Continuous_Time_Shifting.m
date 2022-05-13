%Time Shifting Plot of Continuous time signal.

%Reference:

clc;                        %clears the command window and homes the cursor.
clear all;                  %Clear variables and functions from memory.
clf;                        %Clear current figure.

%Defining The Original Signal {x(t)}.

%t=0:4;
t=0:1:4;                        %defining the x axis how many point take value.
x=@(t) t.*(t<=3)+3.*(t==4);     %defining the amplitude of Y axis each point of x axis from 0 to 4. [x=@(t)] is equal to x(t).
subplot(3,1,1);                 %subplot mean a portion of a figure.where 2 row 1 column and it's postion is row 1 column 1.
plot(t,x(t));                   %Plot use for continuous signal. plots the data sequence Y at the values specified in X.
xlabel('Time');                 %x-axis label.
ylabel('Amplitude');            %y-axis label.
title('Original Signal');       %title  Graph title.
axis([-3 7 0 4]);               %AXIS([XMIN XMAX YMIN YMAX]) sets scaling for the x- and y-axes on the current plot.

%Defining The Time Shifting Signal {x(t-2)} that is delay time.

%t1=t-(-2);
t1=t+2;                     %Time Shifting to 2
subplot(3,1,2);             %subplot mean a portion of a figure.where 2 row 1 column and it's postion is row 1 column 1.
plot(t1,x(t));              %Plot use for continuous signal. plots the data sequence Y at the values specified in X.
xlabel('Time');             %x-axis label.
ylabel('Amplitude');        %y-axis label.
title('Delay Signal');      %title  Graph title.
axis([-3 7 0 4]);           %AXIS([XMIN XMAX YMIN YMAX]) sets scaling for the x- and y-axes on the current plot.

%Defining The Time Shifting Signal {x(t+2)} that is Advance time.

%t2=t-(2);
t2=t-2;                     %Time Shifting to 2
subplot(3,1,3);             %subplot mean a portion of a figure.where 2 row 1 column and it's postion is row 1 column 1.
plot(t2,x(t));              %Plot use for continuous signal. plots the data sequence Y at the values specified in X.
xlabel('Time');             %x-axis label.
ylabel('Amplitude');        %y-axis label.
title('Advance Signal');    %title  Graph title.
axis([-3 7 0 4]);           %AXIS([XMIN XMAX YMIN YMAX]) sets scaling for the x- and y-axes on the current plot.