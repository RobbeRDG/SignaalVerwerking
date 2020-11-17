function [poly] = PolyAdd(poly1,poly2)
    %POLYADD Combine two polynomes of equal or different length

    %Make the two polynomes equal in length
    %First find the longest polynome
    maxlen = max(length(poly1), length(poly2));

    %Extend the polynomes to be of equal length
    poly1(end+1:maxlen) = 0;
    poly2(end+1:maxlen) = 0;

    poly = poly1 + poly2;
end

