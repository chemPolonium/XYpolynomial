function a=pzeros(varargin)
% PZEROS:create zero polynomial matrix
%   A = PZEROS(n)
%   A = PZEROS(r1,r2)
% by chemPolonium
a=repmat(pol(0),varargin{:});
end