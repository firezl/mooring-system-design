function [t,theta1, alpha] = bucket(f,theta,M)
%bucket 钢桶的方程
%   f: 钢桶上部分的拉力
%   theta：f的垂直方向夹角
%   t：钢桶下部分的拉力
%   theta1：t的垂直方向夹角
%   alpha： 钢桶的倾角
m = 100-1*pi*(0.15)^2*1025;
g = 9.8;
theta1 = atan(sin(theta)*f/(cos(theta)*f-(m+M)*g));
t = f*(sin(theta)/sin(theta1));
a=@(x)f*sin(x-theta)-1/2*m*g*sin(x);
alpha = fsolve(a,0);
end

