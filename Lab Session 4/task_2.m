clc;
clear;
close all;

% Time vector
t = linspace(-pi, pi, 1000);

% Number of Fourier terms
N = 50;

% Initialize signals
x = zeros(size(t));
y = zeros(size(t));

% Compute x(t)
for n = 1:N
    x = x + (2/(1 + 16*n^2)) * (cos(2*n*t) + 4*n*sin(2*n*t));
end
x = 0.504 * (1 + x);

% Compute y(t) = x(-t) using Fourier series (sign flip in sine)
for n = 1:N
    y = y + (2/(1 + 16*n^2)) * (cos(2*n*t) - 4*n*sin(2*n*t));
end
y = 0.504 * (1 + y);

% Direct time-reversal for comparison
x_rev = interp1(t, x, -t, 'linear', 'extrap');

% Plot
plot(t, x, 'b', 'LineWidth', 2); hold on;
plot(t, y, 'r--', 'LineWidth', 2);
plot(t, x_rev, 'k:', 'LineWidth', 2);

legend('x(t)', 'y(t) from FS', 'x(-t) direct');
xlabel('t');
ylabel('Amplitude');
title('Verification of Time Reversal Property');
grid on;