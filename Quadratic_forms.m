% TODO
% GIVEN: -x1^2+8x1x2+4x1x3-x2^2-4x2x3-7x3^2+6x1+4x2-4x3-4=0
% Define the type of the surface and find the canonical coord system
% Eingenvector method
A = [-1 4 2; 4 -1 -2; 2 -2 -7];
[Q, R] = eig(A)
% Q =
%   -0.4082   -0.5774    0.7071
%    0.4082    0.5774    0.7071
%    0.8165   -0.5774    0.0000
%R =
%   -9.0000         0         0
%         0   -3.0000         0
%         0         0    3.0000
% +9/4 x1^2+ 3/4 x2^2 -3/4 x3^2=-1 - canonical
% Two-sheeted hyperboloid

%A=[-1 4 2;4 -1 -2;2 -2 -7];
%[Q,R]=eig(A)
[X, Y, Z] = meshgrid(-10:0.5:10, -10:0.5:10, -10:0.5:10);
a = sqrt(4/9); b = sqrt(4/3); c = sqrt(4/3);
V = X.^2/a^2+Y.^2/b^2-Z.^2/c^2;
R = -1;
p = patch(isosurface(X, Y, Z, V, R));
set(p,'FaceColor','red','EdgeColor','black');
view(3); axis equal; grid on; camlight;
