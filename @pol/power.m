function a=power(u,v)
% 矩阵内每一个多项式的幂
a=u;
for i=2:v
    a=a.*u;
end
end