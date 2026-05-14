clc;
close all;
clear all;

% Time vector
t = -2 : 0.001 : 2;

% Rect function
x = double(abs(t) <= 0.5);

% Plot
plot(t, x, 'LineWidth', 1);

grid on;

title('Rectangular Function');
xlabel('t');
ylabel('rect(t)');