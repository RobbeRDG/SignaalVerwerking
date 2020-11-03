%Author: Robbe De Groeve

%Pre execution operations
clear all;
close all;
clc;

%Generate 2 random 2x2 matrices
M1 = randi([0, 100], 2);
M2 = randi([0, 100], 2);


%Task 1: Multiply one of the matrices with a scalar entered by the user.
%***************************************************************
%User information
disp("Multiply matrix M1 with a user defined scalar");
disp("Press a key to start");
pause;

%Get the user input
prompt = 'Give the scalar: ';
scalar = input(prompt);

%Multiply M1 with the given scalar
Out1 = M1*scalar;
%***************************************************************



%Task 2: Raise each element in one of the matrices to the second power.
%***************************************************************
%information
disp("Raise the elements of matrix M1 to the power of 2");
disp("Press a key to start");
pause;

%Raise M1 to the power of 2
Out2 = M1.^2;
%***************************************************************


%Task 3: A matrix multiplication, addition and subtraction of the two matrices.
%***************************************************************
%information
disp("Perform a matrix multiplication, addition and subtraction with M1 and M2");
disp("Press a key to start");
pause;

%Matrix multiplication
Out3 = M1*M2;

%Addion
Out4 = M1+M2;

%Subtraction
Out5 = M1-M2;
%***************************************************************


%Task 4: An element by element multiplication and division of both matrices.
%***************************************************************
%information
disp("Perform an element by element multiplication and division of both matrices");
disp("Press a key to start");
pause;

%Multiply element by element
Out6 = M1.*M2;

%Divide element by element
Out7 = M1./M2;
%***************************************************************



