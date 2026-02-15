clc; close all; clear all;

frequency = 1;
time_instants = 1000;
time_vector = 0:1/(time_instants*frequency):1/frequency;

% Example 1: Multiplying the fundamental signal with itself
ex_1 = sin(2*pi*frequency*time_vector);
plot(time_vector,ex_1.*ex_1), title('f(t) = y(t)^2'), grid on;
area(time_vector,ex_1.*ex_1), xlim([0 1]); 

% Example 2: Multiplying signal with second harmonically related signal
ex_2 = sin(2*pi*2*frequency*time_vector);
plot(time_vector,ex_1.*ex_2), title('f(t) = ex_1(t) * ex_2(t)'), grid on;
area(time_vector,ex_1.*ex_2), xlim([0 1]);

% Example 3: Multiplying sine signal with cosine signal with same frequency
ex_3 = cos(2*pi*frequency*time_vector);
plot(time_vector, ex_1.*ex_3), title('f(t) = ex_1(t) * ex_3(t)'), grid on;
area(time_vector,ex_1.*ex_3), xlim([0 1]);

% Example 4: Multiplying sine signal with cosine signal with different frequency
ex_4 = cos(2*pi*3*frequency*time_vector);
plot(time_vector, ex_1.*ex_4), title('f(t) = ex_1(t) * ex_4(t)'), grid on;
area(time_vector,ex_1.*ex_4), xlim([0 1]);