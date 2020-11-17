function [req] = equiv_pr2(r)
% equiv pr is used to calculate the total resistance of a number of resistors
% in parrallel.
%
% - Input(s):
% * r: inputvector with length n
%
% - Output(s):
% * req: equivalent resistance
%
    %find the inverse of each resistor in r
    rInv = 1./r;
    
    %take the sum of all the inverse resistors
    tmp = sum(rInv);
    
    req = 1/tmp;
end

