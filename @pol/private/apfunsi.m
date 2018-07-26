function a=apfunsi(fh,u,v)
% by chemPolonium
% 这里的 u 的维度是 1*1 而不是一个矩阵，与 apfun 类似
% 对矩阵 v 里的每一个元素进行操作 fh(u,v)
% fh 是函数句柄，比如 @sin 就是一个句柄
if ~isa(fh,'function_handle')
    error('not a function handle');
end
a=pzeros(size(v));
for i=1:size(v(:))
    a(i)=fh(u,v(i));
end
end