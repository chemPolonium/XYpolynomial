function a=int(u,d,r)
% ����
% by chemPolonium
% u:�����ֶ���ʽ
% d:dim��1�Ƕ�x���֣�2�Ƕ�y����
% r:range�������ޣ����Բ�д��д�˷���������󣨶���ʽ��
a=apfunsi(@singleint,d,u);
if exist('r','var')
    a=rinc(a,d,r);
end
end

function a=singleint(d,u)
a=u.p;
if d==1
    a=pol([a./(size(a,2):-1:1),zeros(size(a,1),1)]);
elseif d==2
    a=pol([a./((size(a,1):-1:1)');zeros(1,size(a,2))]);
end
end

function a=rinc(u,d,r)
% range increment
if d==1
    a=val(u,r(2),pol([1;0]))-val(u,r(1),pol([1;0]));
elseif d==2
    a=val(u,r(2),pol([1;0]))-val(u,r(1),pol([1;0]));
end
end