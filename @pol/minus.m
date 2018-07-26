function a=minus(u,v)
% ºı∑®£¨≤ªΩ‚ Õ
% by chemPolonium
if all(size(u)==size(v))
    a=apfun(@singleminus,u,v);
elseif length(u)==1
    a=apfunsi(@singleminus,u,v);
elseif length(v)==1
    a=apfunsi(@singleminus,u,v);
else
    error('dimension not agree');
end
end

function a=singleminus(u,v)
if isobject(u) && isobject(v)
    a=singleminuspp(u,v);
elseif isnumeric(v)
    a=singleminuspn(u,v);
else
    a=singleminusnp(u,v);
end
end

function a=singleminuspn(u,v)
a=u.p;
a(end)=a(end)-v;
a=pol(a);
end

function a=singleminusnp(u,v)
a=-v.p;
a(end)=a(end)+u;
a=pol(a);
end

function a=singleminuspp(u,v)
org=[size(u.p);size(v.p)];
d=max(max(org));
a=zeros(d);
a(end-org(1,1)+1:end,end-org(1,2)+1:end)=...
    a(end-org(1,1)+1:end,end-org(1,2)+1:end)+u.p;
a(end-org(2,1)+1:end,end-org(2,2)+1:end)=...
    a(end-org(2,1)+1:end,end-org(2,2)+1:end)-v.p;
a=pol(a);
end