% TODO
% Plot the surface using rotation
% Surface: x^2/4+z^2/9=1


t = [0:pi/12:2*pi];
x = 2*sin(t);
y = 3*cos(t);
grid on; hold on; axis equal;
xlabel('x'); ylabel('y'); zlabel('z');
view(3);
d = [ 1 0 0];
quiver3(-10*d(1), -10*d(2), -10*d(3), d(1), d(2), d(3), 12, 'Color', 'r');
F = plot(x, y, '-b');

for i=1:6:360
    F = plot(x, y, '-r')
    % Rotate F around d
    rotate(F, d, i);
    pause(0.05)
end
