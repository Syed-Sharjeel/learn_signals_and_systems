clc;
close all;
clear all;

t = -1:0.001:1;

f = 5;   % frequency in Hz

x = sawtooth(2*pi*f*t);

plot(t, x, 'LineWidth', 1);

grid on;

title('Sawtooth Wave');
xlabel('Time (t)');
ylabel('Amplitude');

ylim([-1.5 1.5]);