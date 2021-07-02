% TODO
% 1) Find the equation of the line L1, which includes points A and B
% 2) Find the equation of the line L2, which is parallel to AC section and
% contains point A
% 3) Find the equation of the line L3, which contains point C and is
% perpendicular to L2
% 4) Find the equation of L4 line, which contains point C and is parallel
% to L1
% 5) Find the angle between L3 and L4
% 6) Find the distance between L1 and L4
% 7) Find the distance from the origin to L3
% 8) Plot A,B,C,L1,L2,L3,L4 and normals of all lines
% Given: A(1,-2), B(-2,2), C(1,2)

% 1)
A = [1, -2]; B = [-2, 2]; C = [1, 2];
% -2 = 1*k+b;
% 2 = -2*k+b;
solve('-2-k=2+2*k','k')
b = -2+4/3;
% b = -2/3
% L1: y = -4/3*x-2/3;

% 2)
AC = C - A;
% AC = [0 4] 
% AC(1) = 0 => AC is parallel to Oy 
% L2: x = -2(xcord of   Â)

% 3)
% 0(x-1)+B(y-2)=0;
% y = 2, x - any digit.
% By - 2 * B = 0 - equation of  L3(ó=2)

% 4)
x = [-10:0.001:10];
y = -4/3*x-2/3;
C = [1, 2];
% Slope of the first line is equal to the slope of the second one
% 2 = -4/3*1+b
% b = 2+4/3
% b = 10/3
% y1 = -4/3*x+10/3 - L4 parallel to L1;

% 5)
% y = 2;
% y1 = -4/3*x+10/3;
% Points of  ó:  K = [0,2], K1 = [3,2];
% Points of  ó1: T = [0, 10/3], T1 = [2.5,0];
 T = [0, 10/3]; T1 = [2.5, 0];
 K = [0, 2]; K1 = [3, 2];
 TT1 = T1-T;
 KK1 = K1-K;
 alpha = acos(dot(TT1, KK1)/(norm(TT1)*norm(KK1)))*180/pi
 % alpha = 53.1301
 
% 6)
y = -4/3*x-2/3;  
y1 = -4/3*x+10/3;
% Perpendicular lines have their slopes multiplication equal to -1
y2 = 3/4*x-2/3;
% Finding the common points of the perpendicular and both lines
% -4/3*x-2/3 = 3/4*x-2/3
sym x;
solve('-4/3*x+10/3=3/4*x-2/3','x');
% ans =
% 48/25 
% -4/3*48/25 +10/3
% ans = 58/75     
F = [0, -2/3];
F1 = [48/25, 58/75];
FF1 = F1 - F;
% Calculating the absolute value
norm(FF1)
% distance = 2.4

% 7)
R = [0, 2];
origin = [0, 0];
R_origin = origin - R;
norm(R_origin)
% distance = 2

% 8)
A = [1, -2]; B = [-2, 2]; C = [1, 2];

% Plotting L1,L4,L2,L3
x = [-10:0.01:10];
y = -4/3.*x - 2/3;
yl1 = 3/4.*x - 2/3; 
y1 = -4/3*x+10/3;
y22 = 3/4*x+10/3;
plot(x, y, '-r');
hold on; grid on; 
plot(x, y1, '-k'); 
line([-2 -2], [-10 10]); 
line([-10 10], [2 2]);

% Plotting the points
plot(A(1), A(2), '*r', 'LineWidth', 10);
plot(B(1), B(2), '*k', 'LineWidth', 10);
plot(C(1), C(2), '*y', 'LineWidth', 10);

% plotting the normals
T = [0, -2/3];T1=[1, 1/12];
TT1 = T1 - T;
%x=-2;
K = [-2, 0]; K1 = [-2,10]; KK1 = K1 - K;
%y=2;
R = [0, 2]; R1 = [4, 2]; RR1 = R1 - R;
H = [0, 10/3]; H1 = [1, 49/12]; HH1 = H1 - H;
quiver(T(1), T(2), TT1(1), TT1(2), 2, 'LineWidth', 3, 'Color', 'green');
quiver(K(1), K(2), KK1(1), KK1(2), 2, 'LineWidth', 3, 'Color', 'green');
quiver(R(1), R(2), RR1(1), RR1(2), 2, 'LineWidth', 3, 'Color', 'green');
quiver(H(1), H(2), HH1(1), HH1(2), 2, 'LineWidth', 3, 'Color', 'green');

legend('L1', 'L4', 'L2', 'L3', 'A', 'B', 'C');
title('Line on plane')
axis equal;















