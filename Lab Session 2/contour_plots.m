[x,y] = meshgrid(-5:.1:5, -5:.1:5);
z = -(x.^2 + y.^2);
contour(x,y,z);