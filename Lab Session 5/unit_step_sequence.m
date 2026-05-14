clc;
clear;
close all;

% Define the sequence range
t = -2:0.001:2;

% Create unit step sequence
u = (t >= 0);

% Plot the sequence
plot(t, u, 'LineWidth', 1);

% Labels and title
title('Unit Step Sequence');
xlabel('t');
ylabel('u[t]');

grid on;