function [f] = bode_plot(teller,noemer, fmin, fmax, ndec, fp, Amax, fs, Amin)
%BODE_PLOT Create a bodeplot for the filter transfer function
%   -Input(s): 
%       teller: numerator of the transfer function
%       noemer: denominator of the transfer function
%       fmin: minimum frequency X-axis
%       fmax: maximum frequency X-axis
%       ndec: number of points per decade for log plot
%       fp,Amax,fs,Amin: filter specifications
%   -Output(s):
%       f: simulation frequencies


%Calculate the number of points used in for calculating the function
%Find the number of decades times the points per decade
n = (ceil(fmax/10) - floor(fmin/10)) * ndec;

%find the corresponding logarithmic value of each point
f = logspace(log10(fmin), log10(fmax), n);
w = 2*pi*f;
jw = w*i;


%Evaluate the denominator of the polynome over jw
resp = polyval(noemer, jw);
mag = -20*log(abs(resp));
phase = angle(resp);
phasedeg = -phase*180/pi;


%Plot the magnitude
figure
subplot(2,1,1)
semilogx(w,mag);
grid on

%Plot the phase
subplot(2,1,2)
semilogx(w, phasedeg);
grid on

%Plot information

end

