clear;
close all;

% Time Span
t = 0 : 0.01 : 5;

% Initializing the zero matrix
x = zeros(size(t));

% Condition for the given function
x(t>2 & t<4) = 0.5;

% The given impulse function
h = exp(-3*t);

% Convolution Integral
y = conv(x,h);

subplot(3,1,1); plot(t,x); title('Given X Function');
subplot(3,1,2); plot(t,h); title('Given Impulse Function');
subplot(3,1,3); plot(t,y(1:length(t))); title('conv(x*h)');