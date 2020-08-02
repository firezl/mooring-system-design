function [t,theta1, alpha] = tube(f,theta)
%tube 钢管的方程
%   f: 钢管上部分的拉力
%   theta：f的垂直方向夹角
%   t：钢管下部分的拉力
%   theta1：t的垂直方向夹角
%   alpha： 钢管的倾角
m = 10 - 1*pi*(0.025)^2*1025;
g = 9.8;
theta1 = atan(sin(theta)*f/(cos(theta)*f-m*g));
t = f*(sin(theta)/sin(theta1));
% t = sqrt(m*g*m*g+f*f-2*f*m*g*cos(theta));
a=@(x)2*f*sin(x-theta)-m*g*sin(x);
% a=@(x)sin(x-theta)*f-sin(x-theta1)*t;
alpha = fsolve(a,0);
end

