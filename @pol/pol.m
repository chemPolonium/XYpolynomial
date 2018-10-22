classdef pol < handle
    % polynomial
    % by chemPolonium
    % example: x^3*y^2 + x^2*y + 1
    % is [1 0 0 0; 0 1 0 0; 0 0 0 1]
    properties
        p
    end
    methods
        function obj=pol(p)
            if isempty(p)
                obj.p=0;
            else
                obj.p=cutzero(p);
            end
        end
    end
end