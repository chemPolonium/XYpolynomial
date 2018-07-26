function a=sum(u)
% 求和，与 Matlab 内置的一个逻辑
% by chemPolonium
if size(u,1)==1
    a=pol(0);
    for i=1:size(u,2)
        a=a+u(i);
    end
else
    a=pzeros(1,size(u,2));
    for i=1:size(u,1)
        a=a+u(i,:);
    end
end
end