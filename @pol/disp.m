function disp(u)
% ������ disp ����ʹ�ÿ�����ʾΪ����ʽ����Ȼ�������ʽ���Ǿ������ʽ
% ����ֱ���� Matlab ���������������ʽ����������ʾ
if length(u)==1
    fprintf('  polynomial\n\n');
    disp(u.p);
else
    fprintf('\n  %d x %d polynomial matrix\n\n',size(u));
end
end