function [denorm_polynom_coeffs] = denorm_Butterworth(polynom_coeffs,Wp,Ws,ord_round,Amax)
%DENORM_BUTTERWORTH Calculate the denormalised butterworth polynome
%   -Input(s): 
%       polynom_coeffs: Butterworth polynome coefficients
%       Wp: Pass frequency in rad/s
%       Ws: Stop frequency in rad/s
%       ord_round: Butterworth order
%       Amax: Maximum amplitude in the passband

%   -Output(s):
%       denorm_polynom_coeffs: Denormalised Butterworth polynomial

%First find the constant E
E = sqrt(10^(0.1*Amax) - 1);

%Replace S by factor E^(1/ord)*(s/Wp)
factor = E^(1/ord_round)*(1/Wp);

denorm_polynom_coeffs = zeros(1,length(polynom_coeffs));
for j = 1:length(polynom_coeffs)
    %Substisute S in each element with the corresponding order of the
    %polynomial element
    denorm_polynom_coeffs(j) = polynom_coeffs(j)*((factor)^(length(polynom_coeffs)-j));
end
end

