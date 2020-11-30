function [polyCoeffButterworth] = polyCoeffButterworth(nulp_stable)
%POLYCOEFFBUTTERWORTH Calculate the butterworth coefficients
%   -Input(s): 
%       nulp_stable: Butterworth polynomial roots
%   -Output(s):
%       polyCoeffButterworth: Butterworth polynomial


%Calculate the polynomial coefficients using the polynomial roots
polyCoeffButterworth = poly(nulp_stable);

end

