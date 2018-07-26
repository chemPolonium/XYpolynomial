function a=det(u)
% 行列式，只支持 1x1 或 2x2 的矩阵
if length(u)==1
    a=u;
elseif length(u)==2
    a=u(1,1).*u(2,2)-u(2,1).*u(1,2);
else
    error('only support 1 X 1 or 2 X 2 mat');
end
end