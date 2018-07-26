function a=apfunsin(fh,u)
% apply function single input
a=pzeros(size(u));
for i=1:size(u(:))
    a(i)=fh(u(i));
end
end