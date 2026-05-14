clc;
close all;
clear all;

t = -5:0.001:5;

x = sign(t);

plot(t, x, 'LineWidth', 1);

grid on;

title('Signum Function');
xlabel('Time (t)');
ylabel('sgn(t)');