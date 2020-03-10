function a=times(u,v)
% a function to multiply the 2-D polynomials
% by chemPolonium
% ������ Matlab �ĵ�˺�
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
% �����Ķ�����ˣ������Ƕ���ʽ�Ͷ���ʽҲ�����Ƕ���ʽ����
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
% ��������ʽ��ˣ�conv2 ��ʵ�Ǿ�������ǿ�����ô��
a=pol(conv2(u.p,v.p));
end

function a=nptimes(u,v)
% number polynomial times �ž�����ô��
% by chemPolonium
a=pol(u*(v.p));
end