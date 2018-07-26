function disp(u)
% 重载了 Matlab 自带的显示函数
if length(u)==1
    fprintf('  polynomial\n\n');
    disp(u.p);
else
    fprintf('\n  %d x %d polynomial matrix\n\n',size(u));
end
end