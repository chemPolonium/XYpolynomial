function a=mpower(u,v)
% ����ʽ�������
if length(v)~=1 || isnumeric(v)==0
    error('error in times');
end
if length(u)==1
    a=u.^v;
else
    a=u;
    for i=2:v
        a=a*u;
    end
end
end