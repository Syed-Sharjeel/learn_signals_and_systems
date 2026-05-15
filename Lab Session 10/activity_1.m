% Computer Example C2.4 | Linear Signals & Systems | BP Lathi | Pg: 146

clc; clear;
syms y(t)
Dy = diff(y,t);
dsolve(diff(y,t,2) + 3*Dy + 2*y == 5*t+3, y(0)==2, Dy(0)==3)