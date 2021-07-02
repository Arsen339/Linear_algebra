% TODO
% Task 1:
% Given: (x+2)^2 = 2y
% 1) Define the type of curve
% 2) Plot the curve
% 3) Find the cords of center, vertexes and
% focuses
% 4) Plot these points
% 5) Find the equation of eccentricity
% 6) Plot the axes of symmetry

% Plotting the parabola
x = [-10:0.01:10];
fig1 = figure();
ezplot('(x)^2=y*2');
hold on;
title('(x^2)/2=y')
grid on;
axis equal;

% plotting symmetry axis
T = [0 -8]; R = [0 8]; TR = R - T;
quiver(T(1),T(2),TR(1),TR(2),1,'LineWidth',1,'Color','green');

% (x^2)/2=y; ax^2=y; a=0.5;p=1/2a=1; d=-0.5=-1/(2a);Eccentricity
A = [-8 -0.5]; B = [8 -0.5];
AB = B - A;
quiver(A(1), A(2), AB(1), AB(2), 1, 'LineWidth', 1, 'Color', 'red');

% Plotting the vertex and focus
plot(0,0.5,'*');
plot(0,0,'k*');

legend('Parabola','Symmetry axis', 'Eccentricity','F','O');
close(fig1)
% Focus F(x0,y0+p/2);
% F = [0 0.5];
% F = [-2, -1,5];
% Canonical coord system:
% Y=(x^2)/2; a=0,5;P=1/(2*a)=1;
% O(0,0);
% F-focus(Xo,Yo+p/2);F(0;0,5);
% d-eccentricity =-0,5=-p/2

% Task 2
% Given: (x+3)^2/25+(y-3)^2/9-z^2/25=0
% Plot and define the surface
% One-sheet hyperboloid
% To get the plot for task one, comment task 2 section and line
% "close(Fig1)"
[X, Y, Z] = meshgrid(-10:0.5:10, -10:0.5:10, -10:0.5:10);
a = 5; b = 3; c = 5;
V = X.^2/a^2+Y.^2/b^2-Z.^2/c^2;
R = 1;
p = patch(isosurface(X, Y, Z, V, R));
set(p,'FaceColor','red','EdgeColor','none');
view(3);
axis equal;
grid on;
title('One-sheet hyperboloid')
camlight








