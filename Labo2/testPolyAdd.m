%Author: Robbe De Groeve

%Pre execution operations
clear all;
close all;
clc;

%Initialize the two polynomes
polyNome1 = [9 -2 -15 3 1];
polyNome2 = [3 2];

%Calculate the sum using the polyAdd function
sum = polyAdd(polyNome1, polyNome2);