%Author: Robbe De Groeve
% test if the priciple (A*B)^-1 = M2^-1 * M1^-1 is true

%Pre execution operations
clear all;
close all;
clc;

%Initialize the two matrices
M1 = [2 2 3; 4 5 6; 7 8 9];
M2 = [11 11 13; 14 15 16; 17 18 19];

%Find the result of (A*B)^-1
Out1 = inv((M1*M2));

%Find the result of M1^-1 * M2^-1
Out2 = inv(M2)*inv(M1);

%Test if out1 and out 2 are equal
%Due to roundoff errors out1 and Out2 are not equal.
%Test if the difference between the two is smaller than 10^-5
difference = sum(abs(Out1-Out2), 'all');
if  difference < 1e-5
    disp("Geldig");
else 
    disp("Niet Geldig");
end