clc; close all; clear all;
time_vector = 0:0.001:0.8;

ex_1 = exp(-2*time_vector);
plot(time_vector, real(ex_1)); title('f(t) = \ite^{-3t}'), grid on;

ex_2 = exp(2*time_vector);
plot(time_vector, real(ex_2)); title('f(t) = \ite^{3t}'), grid on;

ex_3 = exp(-20*time_vector);
plot(time_vector, real(ex_3)); title('f(t) = \ite^{-20t}'), grid on;