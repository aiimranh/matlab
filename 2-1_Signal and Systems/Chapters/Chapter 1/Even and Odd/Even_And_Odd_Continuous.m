%Even and Odd Plot of Continuous time signal.

%Reference:
%Youtube: https://www.youtube.com/watch?v=6MFvpwTzTvc

clc;                        %Clears the command window and homes the cursor.
clear all;                  %Clear variables and functions from memory.
clf;                        %Clear current figure.

%Defining The Original Signal {x(t)}.

t=-3:0.01:3;    %n=-7:7;                     %Defining the x axis how many point take value.
x=@(t) exp(-t).*(t>0)+0.5.*(t==0);           %Defining the amplitude of Y axis each point of x axis from -10 to 10. [x=@(n)] equal to x(n)
xe=(x(t)+x(-t))/2;                           %Even Part of the Signal;
xo=(x(t)-x(-t))/2;                           %Odd Part of the signal;

subplot(311);                   %Subplot mean a portion of a figure. where 3 row 1 column and it's postion is row 1 column 1.
plot(t,x(t),'LineWidth',2);     %STEM(x,y,'LineWidth',size) uses the linetype specified for the stems and markers.
grid on;                        %Griding 
xlabel('t');                    %X-Axis label. 
ylabel('Amplitude');            %Y-Axis label.
title('x(t)');                  %title  Graph title.
axis([-5 5 -1 2]);

subplot(312);
plot(t,xe,'LineWidth',2);grid on;
xlabel('t');
ylabel('Amplitude');
title('x0_(t)');
axis([-5 5 -1 2]);

subplot(313);
plot(t,xo,'LineWidth',2);grid on;
xlabel('t');
ylabel('Amplitude');
title('xe_(t)');
axis([-5 5 -1 2]);