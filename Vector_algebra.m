% TODO
% 1) Expand the vector d in the basis of (a,b,c)
% 2.1) Given: A,B,C - vetrexes of a parallelogram. Find the length of
% diagonal BD. A(3,3,3),B(1,2,1),C(-2,2,-3)
% 2.2) Create a plot

% 1)
a = [3; 3; 3];
b = [1; 2; 1];
c = [-2; 2; -3];
d = [2; 7; 1];
A = [a b c];
D = det(A)
% Coefficients of expanding for d
d1 = inv(A)*d

% 2.1)
A = [-3, 2, -3];
B = [3, 1, -2];
C = [1, 3, -2];
BA = A - B;
BC = C - B;
BD = BA + BC;
D = BD + B;
bd_length = norm(BD)

% 2.2) Creating a plot
quiver3(3, 1, -2, BA(1), BA(2), BA(3), 1, 'r', 'LineWidth', 2);
% quiver plots vectors
hold on; grid on; axis square;
quiver3(3, 1, -2, BC(1), BC(2), BC(3), 1, 'g', 'LineWidth', 2);
quiver3(3, 1, -2, BD(1), BD(2), BD(3), 1, 'b', 'LineWidth', 2);

line([1 -5], [3 4], [-2 -3], 'color', 'm');
line([-3 -5], [2 4],[-3 -3],'color', 'y');

legend('BA', 'BC', 'BD', 'CD', 'AD');
title('Parallelogram')
