function a=sum(u)
% ��ͣ��� Matlab ���õ�һ���߼�
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