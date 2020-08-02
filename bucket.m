function [t,theta1, alpha] = bucket(f,theta,M)
%bucket ��Ͱ�ķ���
%   f: ��Ͱ�ϲ��ֵ�����
%   theta��f�Ĵ�ֱ����н�
%   t����Ͱ�²��ֵ�����
%   theta1��t�Ĵ�ֱ����н�
%   alpha�� ��Ͱ�����
m = 100-1*pi*(0.15)^2*1025;
g = 9.8;
theta1 = atan(sin(theta)*f/(cos(theta)*f-(m+M)*g));
t = f*(sin(theta)/sin(theta1));
a=@(x)f*sin(x-theta)-1/2*m*g*sin(x);
alpha = fsolve(a,0);
end

