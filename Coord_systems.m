%  Bernoulli Lemniscata

phi = 0:pi/100:2*pi;
r = sqrt(cos(2*phi));
r = max(0, r);
polar(phi, r, '-r');

% Pascal's snail
phi = 0:pi/100:2*pi;
r = 1-2*sin(phi);
r = max(0, r);
polar(phi, r, '-r');
