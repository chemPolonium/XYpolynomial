function a=plus(u,v)
% a function to add 2-D polynomials
% 对Matlab原来的加法进行了运算符重载
% by chemPolonium
if all(size(u)==size(v))
    a=arrayfun(@singleplus,u,v);
elseif length(u)==1
    a=arrayfun(@(x)singleplus(u,x),v);
elseif length(v)==1
    a=arrayfun(@(x)singleplus(v,x),u);
else
    error('dimension not agree');
end
end

function a=singleplus(u,v)
if isobject(u) && isobject(v)
    a=singlepluspp(u,v);
elseif isnumeric(v)
    a=singlepluspn(u,v);
else
    a=singlepluspn(v,u);
end
end

function a=singlepluspn(u,v)
a=u.p;
a(end)=a(end)+v;
a=pol(a);
end

function a=singlepluspp(u,v)
org=[size(u.p);size(v.p)];
d=max(max(org));
a=zeros(d);
a(end-org(1,1)+1:end,end-org(1,2)+1:end)=...
    a(end-org(1,1)+1:end,end-org(1,2)+1:end)+u.p;
a(end-org(2,1)+1:end,end-org(2,2)+1:end)=...
    a(end-org(2,1)+1:end,end-org(2,2)+1:end)+v.p;
a=pol(a);
end