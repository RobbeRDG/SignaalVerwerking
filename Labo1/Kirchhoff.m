%Author: Robbe De Groeve

%Pre execution operations
clear all;
close all;
clc;

%Initialize the components
R1 = 10;
R2 = 20;
R3 = 25;
R4 = 10;
R5 = 40;
R6 = 50;
V1 = 20;
V2 = 5;

%Define the kirkhoff matrix
KrirkhoffElements = [
    ((-1/R1)+(-1/R2)+(-1/R3)) (1/R3) 0;
    1/R3 ((-1/R3)+(-1/R4)) (-1/R6);
    0 1/R5 ((-1/R5)+(-1/R6))];

KirkhoffResults = [
    (-V1/R1);
    (-V2/R4);
    0];


%Solve the matrix in three ways and measure the difference in timings
tStartInverse = tic;
    %Inverse
    Out1 = inv(KrirkhoffElements)*KirkhoffResults;
tStopInverse = toc(tStartInverse);

tStartDivide = tic;
    %Matrix left divide
    Out2 = KrirkhoffElements\KirkhoffResults;
tStopDivide = toc(tStartDivide);

tStartReducedRow = tic;
    %Reduced row echelon
    Out3 = rref([KrirkhoffElements KirkhoffResults]);
tStopReducedRow = toc(tStartReducedRow);
