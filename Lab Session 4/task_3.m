clc;
clear;
close all;

% Time vector
t = linspace(-pi, pi, 1000);

% Example signal
x = sin(2*t) + 0.5*cos(4*t);

% Time reversal (simple indexing)
y = x(end:-1:1);

% FFT
X = fftshift(fft(x));
Y = fftshift(fft(y));

% Frequency axis
N = length(t);
f = linspace(-N/2, N/2-1, N);

% Plot
figure;

% Amplitude Spectrum
subplot(2,1,1);
plot(f, abs(X), 'b', 'LineWidth', 1.5); hold on;
plot(f, abs(Y), 'r--', 'LineWidth', 1.5);
title('Amplitude Spectrum');
legend('|X(\omega)|', '|Y(\omega)|');
grid on;

% Phase Spectrum
subplot(2,1,2);
plot(f, angle(X), 'b', 'LineWidth', 1.5); hold on;
plot(f, angle(Y), 'r--', 'LineWidth', 1.5);
title('Phase Spectrum');
legend('X(\omega)', 'Y(\omega)');
grid on;