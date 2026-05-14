clc;
close all;
clear all;

% Time vector
t = -3 : 0.001 : 3;

% Initialize ramp signal
R = zeros(size(t));

% Define ramp sequence
R(t >= 0) = t(t >= 0);

% Plot
plot(t, R, 'LineWidth', 1);

title('Ramp Sequence');
xlabel('Time (t)');
ylabel('R(t)');

grid on;