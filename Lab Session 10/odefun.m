function dydt = odefun(t,y)

dydt = zeros(2,1);

% y1 = y
% y2 = y'

dydt(1) = y(2);

% From equation:
% y'' + y' = 2t
% y'' = 2t - y'

dydt(2) = 2*t - y(2);

end