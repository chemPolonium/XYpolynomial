function a=double(u)
% ������ʽת��Ϊ����ֻ���ھ��������ж���ʽ��Ϊ����ʱ������
a=zeros(size(u));
for i=1:size(u(:))
    a(i)=singledouble(u(i));
end
end

function a=singledouble(u)
if length(u.p)==1
    a=u.p;
else
    error('cannot convert polynomial to double');
end
end