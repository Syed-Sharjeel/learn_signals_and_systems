clc; clear all; close all;

% Given Data
frequency = 60;
required_points = 1000;

% Calculation
total_samples = frequency * required_points
for n = 1:required_points
    t(n) = n/total_samples; % required for x-axis
    y(n) = cos(2*pi*frequency*t(n));
end

plot(t, y)
xlabel('Time (seconds)')
ylabel('Amplitude')
title('60 Hz Cosine Wave from 1000 points')
grid on;