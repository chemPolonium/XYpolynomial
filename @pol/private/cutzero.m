function a=cutzero(u)
% ��û�õ�0��ȥ�ˣ����Ǹ�˽�к��������ⲿҲûʲô����
% by chemPolonium
a=u;
while ~any(a(1,:))
    a(1,:)=[];
    if isempty(a)
        a=0;
        break
    end
end
while ~any(a(:,1))
    a(:,1)=[];
    if isempty(a)
        a=0;
        break
    end
end
end