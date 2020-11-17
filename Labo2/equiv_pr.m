function [req] = equiv_pr(r)
    % Calculate the equivalent resistance of a number of parallel resistors
    %
    % - Input(s):
    % * r: inputvector
    %
    % - Output(s):
    % * req: equivalent resistance
    %
    
    n = length(r);
    tmp = 0.0;
    for i=1:n
        tmp=tmp+1/r(i);
    end
    req = 1/tmp;
end