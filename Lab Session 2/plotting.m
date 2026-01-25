t = 0:0.001:0.5;
y = sin(2*pi*30*t);

plot(t, y);
plot(t,y), xlabel('Time'), y('f(t)'), title('f(t) = sin(2/pi30t)'), grid on;
plot(t,y,'r'), title('f(t) = sin(2/pi30t)', 'Color', 'b');