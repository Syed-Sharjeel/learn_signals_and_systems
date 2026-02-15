clc; close all; clear all;
time_vector = 0:0.001:0.8;

% Example 1: Negative Real Part
ex_1 = exp(-0.2+(3*i)) * time_vector;
plot3(time_vector, real(ex_1), imag(ex_1)); title('f(t) = \ite^{-0.2+3jt}'), grid on;

% Example 2: Positive Real Part
ex_2 = exp(0.2+(3*i)) * time_vector;
plot3(t, real(ex_2), imag(ex_2)); title('f(t) = \ite^{0.2+3jt}'), grid on;

% Example 3: Adding two Complex Signals
ex_3 = (exp(0.2 - (3*i)) * time_vector) + (exp(0.2 + (3*i)) * time_vector);
plot3(time_vector, real(ex_3), imag(ex_3)); title('f(t) = \ite^{0.2-3jt} + \ite^{0.2+3jt}'), grid on;