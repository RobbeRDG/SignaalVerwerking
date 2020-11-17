%Author: Robbe De Groeve

%Pre execution operations
clear all;
close all;
clc;

%create the three test resistance arrays
R1 = 100*rand(16384,1);
R2 = 100*rand(163840,1);
R3 = 100*rand(1638400,1);

%test the execution time of the equiv_pr1 function with the three arrays
R1_START = tic();
 R1_EQUIV = equiv_pr(R1);
R1_TIME = toc(R1_START);

R2_START = tic();
 R2_EQUIV = equiv_pr(R2);
R2_TIME = toc(R2_START);

R3_START = tic();
 R3_EQUIV = equiv_pr(R3);
R3_TIME = toc(R3_START);

%test the execution time of the equiv_pr2 function with the three arrays
R1_START_VEC = tic();
 R1_EQUIV_VEC = equiv_pr2(R1);
R1_TIME_VEC = toc(R1_START_VEC);

R2_START_VEC = tic();
 R2_EQUIV_VEC = equiv_pr2(R2);
R2_TIME_VEC = toc(R2_START_VEC);

R3_START_VEC = tic();
 R3_EQUIV_VEC = equiv_pr2(R3);
R3_TIME_VEC = toc(R3_START_VEC);

