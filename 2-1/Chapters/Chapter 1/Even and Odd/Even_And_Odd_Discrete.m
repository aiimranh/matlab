%Even and Odd Plot of discreate time signal.

%Reference:
%Youtube: https://www.youtube.com/watch?v=-6xLKEypZQk

clc;                        %Clears the command window and homes the cursor.
clear all;                  %Clear variables and functions from memory.
clf;                        %Clear current figure.

%Defining The Original Signal {x(n)}.

n=-10:1:10;    %n=-7:7;     %Defining the x axis how many point take value.
x=@(n) n.*(n>=0);           %Defining the amplitude of Y axis each point of x axis from -10 to 10. [x=@(n)] equal to x(n)
xe=(x(n)+x(-n))/2;          %Even Part of the Signal;
xo=(x(n)-x(-n))/2;          %Odd Part of the signal;

subplot(311);                   %Subplot mean a portion of a figure. where 3 row 1 column and it's postion is row 1 column 1.
stem(n,x(n),'LineWidth',0.5);   %STEM(x,y,'LineWidth',size) uses the linetype specified for the stems and markers.
grid on;                        %Griding 
xlabel('n');                    %X-Axis label. 
ylabel('Amplitude');            %Y-Axis label.
title('x(n)');                  %title  Graph title.


subplot(312);
stem(n,xe,'LineWidth',1.5);grid on;
xlabel('n');
ylabel('Amplitude');
title('x0_(n)');

subplot(313);
stem(n,xo,'LineWidth',1.5);grid on;
xlabel('n');
ylabel('Amplitude');
title('xe_(n)');