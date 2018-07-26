function a=cutzero(u)
% 把没用的0都去了，这是个私有函数，在外部也没什么卵用
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