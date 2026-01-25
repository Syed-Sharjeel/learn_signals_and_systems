t = 0:0.0001:0.05; 
x = cos(2*pi*50*t);  
y = sin(2*pi*50*t); 
plot3(t,x,y), xlabel('Time'), ylabel('cosine axis'), zlabel('sine axis');