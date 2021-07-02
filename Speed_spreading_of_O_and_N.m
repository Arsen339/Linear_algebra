% TODO
% Plot speed distribution for hydrogen and nitrogen

% Parametrs
Vx = [-2000:0.001:2000];
U1 = 0.002; U2 = 0.028; T = 300; K = 1.381*10^(-23);
Na = 6.022*10^23; m1 = U1/Na; m2 = U2/Na;

% Function of spreading
F1 = sqrt(m1/(2*pi*K*T))*exp(-m1*(Vx.^2)/(2*K*T));

% Plotting
plot(Vx, F1, 'g'); 
hold on; grid on;
F2 = sqrt(m2/(2*pi*K*T))*exp(-m2*(Vx.^2)/(2*K*T));
plot(Vx, F2,'r');
xlabel('Speed projection Vx, m/s');
ylabel('Ô(Vx)');
line([0 0], [0 1.4*10^-3]);
legend('Hydrogen', 'Nitrogen');
