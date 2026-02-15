clc; close all; clear all;
time_vector = 0:0.001:0.8;

% Example 1: Negative Imaginary Power Signal
ex_1 = exp(-3*i*time_vector);
plot3(time_vector, real(ex_1), imag(ex_1)); title('f(t) = \ite^{-3jt}'), grid on;

% Example 2: Positive Imaginary Power Signal
ex_2 = exp(3*i*time_vector);
plot3(time_vector, real(ex_2), imag(ex_2)); title('f(t) = \ite^{3jt}'), grid on;