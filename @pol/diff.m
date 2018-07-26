function a=diff(u,dim)
% polyder for 2-D polynomial
% by chemPolonium
% ΢�֣�dim��ά�ȣ�u�Ǵ�΢�ֵĶ���ʽ��1�Ƕ�x΢�֣�2�Ƕ�y΢��
% ֧�ֶ���ʽ�����΢�֣�Ҳ����һ��΢��һ�Ѷ���ʽ
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