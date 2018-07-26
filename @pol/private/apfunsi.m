function a=apfunsi(fh,u,v)
% by chemPolonium
% ����� u ��ά���� 1*1 ������һ�������� apfun ����
% �Ծ��� v ���ÿһ��Ԫ�ؽ��в��� fh(u,v)
% fh �Ǻ������������ @sin ����һ�����
if ~isa(fh,'function_handle')
    error('not a function handle');
end
a=pzeros(size(v));
for i=1:size(v(:))
    a(i)=fh(u,v(i));
end
end