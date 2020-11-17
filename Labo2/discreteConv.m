%Author: Robbe De Groeve

%Pre execution operations
clear all;
close all;
clc;



%Initialize the parameters
%*************************************************************************
%Initialize the times
t = 0:0.025:0.6;

%Initialise the impulse response
H = 10*exp(-5*t);

%Generate the x vector and prealocate the length
x=zeros(1,length(t));
for i=1:length(t)
    if t(i) <= 0.3
        x(i)=2*t(i);
    end
end



%Calculate the response
%*************************************************************************
%Using the filter function
y1 = filter(H,1,x);

%Using convolution
y2 = conv(H,x);
y3=y2;
%Slice the resulting array to get the same length as t
y2(length(t)+1 : length(y2)) = [];



%Plot the results
%*************************************************************************
%create a window with 3 plots
tiledlayout(3,1);

% Top plot
nexttile;
title('Input signal');
plot(t,x);
grid on;
xlabel('t (in sec)');
ylabel('x (in V)');

% Middle plot
nexttile;
plot(t,y1);
title('Response using filter()');
grid on;
xlabel('t (in sec)');
ylabel('y (in V)');

% Bottom plot
nexttile;
plot(t,y2);
title('Response using conv()');
grid on;
xlabel('t (in sec)');
ylabel('y (in V)');



        