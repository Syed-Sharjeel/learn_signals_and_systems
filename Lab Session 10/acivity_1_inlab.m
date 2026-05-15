clc; clear;

syms y(t);
Dy = diff(y,t);
D2y = diff(y,t,2);

ode = D2y + Dy == 2*t;
cond_1 = y(0) == 0;
cond_2 = Dy(0) == 0;
dsolve(ode, cond_1, cond_2)