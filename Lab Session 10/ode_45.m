clc;
clear;

% Time span
tspan = [0 10];

% Initial conditions
y0 = [0; 0];

% Solve using ode45
[t,y] = ode45(@odefun, tspan, y0);

figure;
plot(t, y(:,1), 'LineWidth', 2);
grid on;
xlabel('Time t');
ylabel('y(t)');
title('Solution of y'''' + y'' = 2t using ode45');