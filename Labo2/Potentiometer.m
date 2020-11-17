%Author: Robbe De Groeve

%Pre execution operations
clear all;
close all;
clc;

%initialize the variables
%*************************************************************************
%The different values of the load resistance
RB1 = 220;
RB2 = 3300; 
RB3 = 10e3; 
RB4=10e99 ;

%The potentiometer
r =1000; 

%The voltage supply
UI=10;



%Solve the equations
%*************************************************************************
%Return a linearly spaced vector from 0 to 1 with 100 elements
x=linspace(0,1);

%generate 4 vectors with the different RB values
urb1=UI*x*RB1./(r*(1-x).*x+RB1);
urb2=UI*x*RB2./(r*(1-x).*x+RB2);
urb3=UI*x*RB3./(r*(1-x).*x+RB3);
urb4=UI*x*RB4./(r*(1-x).*x+RB4);


%Plot the results
%*************************************************************************
%Plot the graphs
plot(x,urb1);
hold on;
plot(x,urb2);
plot (x,urb3);
plot (x,urb4);

%Generate the legend
title ('Potentiometer');
legend ('U(RB1)','U(RB2)','U(RB3)','U(RB4)');
legend('Location','northwest');
grid on;
xlabel('x');
ylabel('U(RB)') ;


