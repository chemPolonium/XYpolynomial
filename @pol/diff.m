function a=diff(u,dim)
% polyder for 2-D polynomial
% by chemPolonium
% 微分，dim是维度，u是待微分的多项式，1是对x微分，2是对y微分
% 支持多项式矩阵的微分，也就是一次微分一堆多项式
% dim: 1 or 2, 1 for x, 2 for y
a=apfunsi(@singlediff,dim,u);
end

function a=singlediff(dim,u)
if dim==1
    a=u.p(:,1:end-1).*(size(u.p,2)-1:-1:1);
elseif dim==2
    a=u.p(1:end-1,:).*(size(u.p,1)-1:-1:1)';
else
    error('dim wrong, only can accept 1 for x or 2 for y');
end
a=pol(a);
end