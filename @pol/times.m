function a=times(u,v)
% a function to multiply the 2-D polynomials
% by chemPolonium
% 重载了 Matlab 的点乘号
if all(size(u) == size(v))
    a=arrayfun(@singletimes,u,v);
elseif length(u) == 1
    a=arrayfun(@(x)singletimes(u,x),v);
elseif length(v) == 1
    a=arrayfun(@(x)singletimes(v,x),u);
else
    error('dimension not agree');
end
end

function a=singletimes(u,v)
% 单个的东西相乘，可以是多项式和多项式也可以是多项式和数
% by chemPolonium
if isobject(u) && isobject(v)
    a=pptimes(u,v);
elseif ~isobject(u)
    a=nptimes(u,v);
else
    a=nptimes(v,u);
end
end

function a=pptimes(u,v)
% 两个多项式相乘，conv2 其实是卷积，但是可以这么用
a=pol(conv2(u.p,v.p));
end

function a=nptimes(u,v)
% number polynomial times 嗯就是这么简单
% by chemPolonium
a=pol(u*(v.p));
end