function a=double(u)
% ������ʽת��Ϊ����ֻ���ھ��������ж���ʽ��Ϊ����ʱ������
a = arrayfun(@singledouble,u);
end

function a=singledouble(u)
if length(u.p)==1
    a=u.p;
else
    error('cannot convert polynomial to double');
end
end