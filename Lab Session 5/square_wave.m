clc;
close all;
clear all;

% Time vector
t = -1:0.001:1;

% Frequency
f = 5;  % Hz

% Square wave using sign function
x = sign(sin(2*pi*f*t));

% Plot
plot(t, x, 'LineWidth', 1);

grid on;

title('Square Wave using sgn(sin(2\pi f t))');
xlabel('Time (t)');
ylabel('Amplitude');