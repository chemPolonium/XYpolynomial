function disp(u)
% 重载了 disp 函数使得可以显示为多项式，虽然这个多项式还是矩阵的形式
% 可以直接在 Matlab 命令行里输入多项式变量名来显示
if length(u)==1
    fprintf('  polynomial\n\n');
    disp(u.p);
else
    fprintf('\n  %d x %d polynomial matrix\n\n',size(u));
end
end