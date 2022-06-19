clc;
clear;

h = 0.5;

x = H_eul(h);
y = H_hens(h);
z = H_poly(h);
a = H_rk(h);

fprintf('%13f %13f %13f %13f\n',x,y,z,a);