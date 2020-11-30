%Author: Robbe De Groeve

%Pre execution operations
clear all;
close all;
clc;


%Initialize the parameters
Amin = 20;
Amax = 3;
fp = 1.0e6;
wp = 2*pi*fp;
fs = 2.5e6;
ws = 2*pi*fs;
fmin = 100e3;
fmax = 10e6;
ndec = 40;

%Find the butterworth order and rounded order
[ord,ord_round] = nButterworth(fp,fs,Amax,Amin);

%Find and plot all the zero points
[nulpunten,stable_nulpunten] = nulp_Butterworth(ord_round);

%Calculate the butterworth coefficients
polyCoeffButterworth = polyCoeffButterworth(stable_nulpunten);

%Calculate the denormalised butterworth coefficients
real_polyCoeffButterworth = real(polyCoeffButterworth);
denorm_polynom_coeffs = denorm_Butterworth(real_polyCoeffButterworth,wp,ws,ord_round,Amax);


%Show the bode plot using two methods
%Method 1: Using the function bode_plot
f = bode_plot(1,denorm_polynom_coeffs,fmin,fmax,ndec,fp,Amax,fs,Amin);
%Method 2: Using the build in bode function
figure
tff = tf(1, denorm_polynom_coeffs);
bode(tff)
grid on

