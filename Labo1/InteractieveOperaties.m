%Author: Robbe De Groeve

%Generate 2 random 2x2 matrices
M1 = randi([0, 100], 2);
M2 = randi([0, 100], 2);


%Multiply matrix M1 with a user defined number
%***************************************************************
%User information
disp("Multiply matrix M1 with a user defined number");
disp("Press a key to continue");
pause;

%Get the user input
prompt = 'Give the scalar: ';
scalar = input(prompt);

%Multiply M1 with the given scalar
Out1 = M1*scalar;
%***************************************************************



%Raise the values of matrix M1 to the power of 2
%***************************************************************
%User information
disp("Raise the values of matrix M1 to the power of 2");
disp("Press a key to continue");
pause;

%Raise M1 to the power of 2
Out2 = M1.^2;
%***************************************************************


%Perform a matrix multiplication, addition and subtraction with M1 and M2
%***************************************************************
%User information
disp("Perform a matrix multiplication, addition and subtraction with M1 and M2");
disp("Press a key to continue");
pause;

%Matrix multiplication
Out3 = M1*M2;

%Addion
Out4 = M1+M2;

%Subtraction
Out5 = M1-M2;
%***************************************************************


%Multiply the matrices element by element and divide the two matrices
%***************************************************************
%User information
disp("Multiply the matrices element by element and divide the two matrices");
disp("Press a key to continue");
pause;

%Multiply element by element
Out6 = M1.*M2;

%Divide the matrices
Out7 = M1/M2;
%***************************************************************



