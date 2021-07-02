% TODO
% Part 1
% Given: vector a`(-1,-1,1), points: M1(-2,2,2),M2(2,3,-3)
% 1) Find the common equation of the plane PI1, which contains M1 and is
% perpendicular to a`
% 2) Find the common equation of the plane PI2, which contains M1,M2 and is
% parallel to a`
% 3) Find the canonical equation of the intersection line of PI1 and PI2
% 4) Make a plot of M1,M2,PI1,PI2, normals of PI1 and PI2, which have their
% origin in M1

% 1)
a = [-1; -1; 1]; M1 = [-2 2 2]; M2 = [2 3 -3];
M1M2 = M2 - M1;
%-1(x+2)-1(y-2)+1(z-2)=0
%-x-2-y+z=0
%x+y-z+2=0 - equation of PI1

% 2)
syms x y z
a = [-1; -1; 1]; M1 = [-2 2 2]; M2 = [2 3 -3];
A = [x+2 y-2 z-2; 4 1 -5; -1 -1 1];
det(A)
% y - 4*x - 3*z – 4=0 - equation of PI2 

% 3)
a = [-1; -1; 1]; M1 = [-2 2 2]; M2 = [2 3 -3];
% x+y-z+2=0 - PI1
% y - 4x - 3z – 4=0 - PI22
% If Z = 0
% x+y=-2
% -4x+y=4
A = [1 1; -4 1]; B = [-2 4];
X = inv(A) * B'
% X =
%   -1.2000
%   -0.8000

% a` is normal for PI1
% norman for PI2: a2=[-4;1;-3];
a2 = [-4;1;-3];
q = cross(a, a2)
% q =
%    2
%    -7
%    -5
% Intersection line: (X+1,2)/2=(y+0,8)/-7=z/-5 

% 4)
plot3(M1(1), M1(2), M1(3), '*r', 'LineWidth', 10)
hold on; grid on;
plot3(M2(1), M2(2), M2(3), '*r', 'LineWidth', 10)

% Plotting PI1
yy = -10:0.5:10;
zz = -10:0.5:10;
[y, z] = meshgrid(yy, zz);
x = z -2 -y;
surf(x, y, z)
axis equal;

% Plotting PI2
yy = -10:0.5:10;
zz = -10:0.5:10;
[y, z] = meshgrid(yy, zz);
x = (4 + 3*z -y)/(-4);
surf(x, y, z)

% Plotting quiver
a = [-1; -1; 1]; M1 = [-2 2 2]; M2 = [2 3 -3];
quiver3(0, 0 ,0, -1, -1, 1, 'LineWidth', 8, 'Color', 'g')  


% Part 2
% TODO
% Given: L1: (x-3)/1=(y-3)/0=(z-2/1), L2:={x+2y+2z=0,x-y-2=0}
% 1) Define if the lines cross or intersect
% 2) Find the angle between the lines
% 3) If the lines intersect, find  the  equation of their common plane
% 4) If the lines cross, find find the distance between them
% 5) Make a plot

% 1)
A = [1 2; 1 -1]; B = [0 2];
X = inv(A)*B'
% X = 1.3333 -0.6667
n1 = [1; 2; 2]; n2 = [1; -1; -2];
q = cross(n1,n2)
% q =
%    -2
%     4
%    -3
% (x-4/3)/-2=(y+2/3)/4=z/-3 % - Canonical equation of the secont line 
W = [3-1.33 3+0.67 2; 1 0 1; -2 4 -3];
det(W)
% ans = 4.9900 The lines cross

% 2)
a1 = [1;0;1];
a2 = [-2;4;-3];
PHI = acos(dot(a1,a2)/(norm(a1)*norm(a2)))*180/pi
% PHI =  131.0359

% 3)
M1 = [0 2 -2];
M1 = [0 2 -2];
M2 = [0 3 0];
M1M2 = M2-M1;
P = [M1M2(1) M1M2(2) M1M2(3); a1(1) a1(2) a1(3); a2(1) a2(2) a2(3)];
distance = det(P)/norm(cross(a1,a2))
% distance =  1.5667  















