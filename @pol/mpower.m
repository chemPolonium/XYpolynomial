function a=mpower(u,v)
% 多项式矩阵的幂
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