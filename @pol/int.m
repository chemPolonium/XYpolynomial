function a=int(u,d,r)
% 积分
% by chemPolonium
% u:待积分多项式
% d:dim，1是对x积分，2是对y积分
% r:range，上下限，可以不写，写了返回数或矩阵（多项式阵）
a=apfunsi(@singleint,d,u);
if exist('r','var')
    a=rinc(a,d,r);
end
end

function a=singleint(d,u)
a=u.p;
if d==1
    a=pol([a./fliplr((1:size(a,2))),zeros(size(a,1),1)]);
elseif d==2
    a=pol([a./flip((1:size(a,1))');zeros(1,size(a,2))]);
end
end

function a=rinc(u,d,r)
% range increment
if d==1
    a=val(u,r(2),pol([1;0]))-val(u,r(1),pol([1;0]));
elseif d==2
    a=val(u,r(2),pol([1;0]))-val(u,r(1),pol([1;0]));
end
end