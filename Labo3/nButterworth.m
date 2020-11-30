function [ord,ord_round] = nButterworth(fp,fs,Amax,Amin)
%NBUTTERWORTH Calculate the butterworth order for a LP fiter
%   -Input(s): 
%       fp: Pass frequency
%       fs: Stop frequency
%       Amax: Maximum amplitude in the passband
%       Amax: Maximum amplitude in the stopband
%   -Output(s):
%       ord: exact order
%       ord_round: rounded up Butterworth order

%First find the constant E
E = sqrt(10^(0.1*Amax) - 1);

%Calculate the exact butterworth order
ord = (1/2 * log((10^(0.1*Amin)-1)/(E^2)))/(log(fs/fp));

%Round up the butterworth order
ord_round = ceil(ord);
end

