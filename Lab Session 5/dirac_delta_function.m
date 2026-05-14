clc;
clear;
close all;

% Time axis
t = -1:0.001:1;

% Initialize delta function
delta = zeros(size(t));

% Approximate delta at t = 0
delta(t == 0) = 1;

% Plot
plot(t, delta, 'LineWidth', 1.5);

% Labels and title
title('Approximation of Dirac Delta Function');
xlabel('Time (t)');
ylabel('\delta(t)');

grid on;