function [a,y0,l] = chain(f,theta,x)
%UNTITLED3 此处显示有关此函数的摘要
%   此处显示详细说明
w = x;
g = 9.8;
y0 = f/(w*g)-f*sin(theta)/(w*g);
a = f/(w*g) - y0;
l = y0*sqrt(2*f/(w*y0*g)-1);
end
