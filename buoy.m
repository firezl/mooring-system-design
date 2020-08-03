function [t,theta] = buoy(h,v1,v2)
%buoy 浮标的方程
%   t: 钢管1的拉力
%   theta :拉力的角度（竖直方向夹角）
%   h: 浮标的入水深度
%   v1: 风速
d1 = 2;
H = 2;
h1 = H - h;
F = abs(0.625*d1*h1*v1*v1+374*d1*h*v2*v2);
f = h*pi*d1*d1*1025*9.8/4;
G = 1000*9.8;
theta = atan(F/(f-G));
t = (f-G)/cos(theta);
end