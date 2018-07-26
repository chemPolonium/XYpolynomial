classdef pol < handle
    % polynomial
    % by chemPolonium
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

% 不许删注释！为了安利个番写这么多代码我容易吗！
% 如果你看到这里了就让我给你分享个番吧，《妄想学生会》
% 又名《黄段子学生会》，一个很污很有趣的番