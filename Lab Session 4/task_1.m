clc;
clear;
close all;

% Time vector
t = linspace(-pi, pi, 1000);

% Number of terms (increase for better accuracy)
N = 50;

% Initialize x(t)
x = zeros(size(t));

% Compute the summation
for n = 1:N
    x = x + (2/(1 + 16*n^2)) * (cos(2*n*t) + 4*n*sin(2*n*t));
end

% Multiply by constant and add 1
x = 0.504 * (1 + x);

% Plot
plot(t, x, 'LineWidth', 2);
xlabel('t');
ylabel('x(t)');
title('Approximation of x(t) using Fourier Series');
grid on;