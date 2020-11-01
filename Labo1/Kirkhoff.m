%Author: Robbe De Groeve

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
    (-R1/R2 - 1) (R1/R4) (-R1/R6);
    1 (R3/R4 - 1) (-R3/R6);
    0 1 (-R5/R6 - 1)];

KirkhoffResults = [
    (-V1 - (R1/R4)*V2);
    (R3/R4)*V2;
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
