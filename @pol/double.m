function a=double(u)
% 将多项式转换为矩阵，只有在矩阵内所有多项式都为常数时可以用
a=zeros(size(u));
for i=1:size(u(:))
    a(i)=singledouble(u(i));
end
end

function a=singledouble(u)
if length(u.p)==1
    a=u.p;
else
    error('cannot convert polynomial to double');
end
end