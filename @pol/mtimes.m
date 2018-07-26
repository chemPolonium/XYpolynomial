function a=mtimes(u,v)
% 重载了 Matlab 的乘号
% 乘法，支持数乘，矩阵相乘
% by chemPolonium
a=pzeros(size(u,1),size(v,2));
if length(u)==1 || length(v)==1
    a=u.*v;
else
    for i=1:size(u,1)
        for j=1:size(v,2)
            a(i,j)=sum(u(i,:).*v(:,j)');
        end
    end
end
end