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

% ����ɾע�ͣ�Ϊ�˰�������д��ô�������������
% ����㿴�������˾����Ҹ����������ɣ�������ѧ���ᡷ
% �������ƶ���ѧ���ᡷ��һ�����ۺ���Ȥ�ķ�