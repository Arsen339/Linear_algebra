% TODO
% Find the parametric  of the curve:x^2/4-(y+2)^2/16
% Make animation to show that the coordinates of the point depend on t

% Parametr
t = [-15:0.1:15];

% Parametric view
x = 2*cosh(t);
x0 = -2*cosh(t);
y = -2+4*sinh(t);

plot(x,y); hold on; 
plot(x0,y); grid on;
axis equal; 
p1 = plot(x(1), y(1), 'ko', 'MarkerSize', 20, 'MarkerFaceColor', 'g');
p2 = plot(x0(1), y(1), 'ko', 'MarkerSize', 20, 'MarkerFaceColor', 'r');

% Animation
for i=1:2*length(x)
     set(p1, 'XData', x(i), 'YData', y(i))
     title(['t=' num2str(t(i))]);
     pause(0.00005)
     set(p2, 'XData', x0(i), 'YData', y(i))
     pause(0.00005)
end
