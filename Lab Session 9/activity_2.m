clc;
clear;
close all;

% Time axis
t = 0:0.01:10;

% Initialize output y(t)
y = zeros(size(t));

% Case 1: t < 2 y(t) = 0

y(t < 2) = 0;

% Case 2: 2 <= t < 4 y(t) = (1/6)(1 - e^{-3(t-2)})
idx1 = (t >= 2) & (t < 4);
y(idx1) = (1/6) * (1 - exp(-3*(t(idx1) - 2)));

% Case 3: t >= 4 y(t) = (1/6)(e^{-3(t-4)} - e^{-3(t-2)})
idx2 = (t >= 4);
y(idx2) = (1/6) * (exp(-3*(t(idx2) - 4)) - exp(-3*(t(idx2) - 2)));

% Plotting analytical result
figure;

plot(t, y, 'LineWidth', 2);
grid on;

title('Analytical Convolution Output y(t)');
xlabel('Time t');
ylabel('Amplitude');