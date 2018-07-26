function a=val(u,x,y)
% a function to get the value for 2-D polynomial
% by chemPolonium
% p is u.p，总之把多项式的类传到第一个参数上就行了
% x 和 y 是矩阵，可以是多项式矩阵或数值矩阵，要有相同的维度，用这个函数画个图啥的很方便
% x,y can be a matrix and will be calculated for each position
if length(x)==1 && length(y)==1
    a=pmval(u,x,y);
elseif length(u)==1
    a=matval(u,x,y);
else
    error('val error');
end
end

function a=matval(u,x,y)
% using JiuShao Qin method
b=u.p(1);
for j=2:size(u.p,2)
    b=b.*x+u.p(1,j);
end
a=b;
for i=2:size(u.p,1)
    b=u.p(i,1);
    for j=2:size(u.p,2)
        b=b.*x+u.p(i,j);
    end
    a=a.*y+b;
end
end

function a=pmval(u,x,y)
if ~isobject(x) && ~isobject(y)
    a=pmnval(u,x,y);
else
    a=pmpval(u,x,y);
end
end

function a=pmnval(u,x,y)
% polynimial matrix val(number)
a=zeros(size(u));
for i=1:length(a(:))
    a(i)=matval(u(i),x,y);
end
end

function a=pmpval(u,x,y)
% polynimial matrix val(polynomial)
a=pzeros(size(u));
for i=1:size(u(:))
    a(i)=pval(u(i),x,y);
end
end

function a=pval(u,x,y)
b=pol(u.p(:,1));
for j=2:size(u.p,2)
    b=b*x+pol(u.p(:,j));
end
a=pol(b.p(1,:));
for i=2:size(b.p,1)
    a=a*y+pol(b.p(i,:));
end
end