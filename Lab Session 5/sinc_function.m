clc;
close all;
clear all;

% Time vector from -4? to 4?
t = -4*pi : 0.01 : 4*pi;

% Initialize sinc signal
x = zeros(size(t));

% Compute sinc function
for n = 1:length(t)

    if t(n) == 0
        x(n) = 1;
    else
        x(n) = sin(t(n)) / t(n);
    end

end

% Plot
plot(t, x, 'LineWidth', 1);

title('Sinc Function');
xlabel('t');
ylabel('sinc(t)');

grid on;