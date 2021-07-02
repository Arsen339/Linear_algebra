% TODO
% Part 1
% Find the roots of (-1-sqrt(3i))^(1/6)
% Make a plot


z = -1-sqrt(3)*i;
r = abs(z); phi = angle(z); k = 0:1:5;
zroot = r^(1/6)*(cos((phi+2*pi*k)/6)+i*sin((phi+2*pi*k)/6));
plot(real(zroot), imag(zroot),'or');
t = 0:pi/1000:2*pi;
x=  r^(1/6)*cos(t); y = r^(1/6)*sin(t);
plot(x, y,':b');
hold on;  grid on; 
line([-2.5 2.5],[0 0],'color','black');
line([0 0], [-2 2],'color','black');
xlabel('RE'); ylabel('Im');
plot(real(zroot), imag(zroot),'or');
title('Complex plane');
axis([-2 2 -2 2]);
axis equal;

line([real(zroot(1)) real(zroot(2))], [imag(zroot(1)) imag(zroot(2))],'LineStyle','-.');
line([real(zroot(2)) real(zroot(3))], [imag(zroot(2)) imag(zroot(3))],'LineStyle','-.');
line([real(zroot(3)) real(zroot(4))], [imag(zroot(3)) imag(zroot(4))],'LineStyle','-.');
line([real(zroot(4)) real(zroot(5))], [imag(zroot(4)) imag(zroot(5))],'LineStyle','-.');
line([real(zroot(5)) real(zroot(6))], [imag(zroot(5)) imag(zroot(6))],'LineStyle','-.');
line([real(zroot(6)) real(zroot(1))], [imag(zroot(6)) imag(zroot(1))],'LineStyle','-.');
close all;

% Part 2
% Plot a quantity of points, using the following condition:
% Arg(z)=-3pi/4 Arg(z)=-pi/3
phi = pi/4;
r = [0:1:10];
z = r*(cos(phi) + i*sin(phi));
plot(real(z),imag(z),'*r');
grid on
hold on
xlabel('Re(z)');
ylabel('Im(z)');
title('Arg(z)=const');
phi = 5*pi/6;
z = r*(cos(phi) + i*sin(phi));
plot(real(z), imag(z), '*g');
phi = -3*pi/4;
r = [0:1:10];
z = r*(cos(phi) + i*sin(phi));
plot(real(z),imag(z),'*b');
phi = (-1)*pi/3;
z = r*(cos(phi) + i*sin(phi));
plot(real(z), imag(z), '*y');
legend('Pi/4', '5Pi/6', '-3Pi/4', '-Pi/3');
line([-10 10], [0 0], 'Color', 'k'); line([0 0], [-10 10], 'Color', 'k');





















