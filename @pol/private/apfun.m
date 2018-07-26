function a=apfun(fh,u,v)
% apply function to each element of u and v
% by chemPolonium
% ���� bsxfun ����֧�ֶ���ʽ���������ٶ�
% fh: function handle �������
% u,v: ��������Ҫ��ά��һ��
if ~isa(fh,'function_handle')
    error('not a function handle');
end
a=pzeros(size(v));
% for i=1:size(v,1)
%     for j=1:size(v,2)
%         a(i,j)=fh(u(i,j),v(i,j));
%     end
% end
for i=1:size(v(:))
    a(i)=fh(u(i),v(i));
end
end