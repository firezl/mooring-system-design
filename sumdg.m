function [theta,alpha,y0,s]=sumdg(h,m)
v=36;
l=1;
lb=1;
[t1,theta1]=buoy(h,v);
[t2,theta2,alpha1]=tube(t1,theta1);
[t3,theta3,alpha2]=tube(t2,theta2);
[t4,theta4,alpha3]=tube(t3,theta3);
[t5,theta5,alpha4]=tube(t4,theta4);
[t6,theta6,alpha5]=bucket(t5,theta5,m);
[a,y0,lc]=chain(t6,theta6);
alpha=alpha5/pi*180;
if(lc>22.05)
    b=a*asinh((lc-22.05)/a);
    beta=sinh(b/a);
    theta = beta/pi*180;
    y0=y0-a*(cosh(b/a)-1);
else
    theta = 0;
end
s=h+cos(alpha1)*l+cos(alpha2)*l+cos(alpha3)*l+cos(alpha4)*l+cos(alpha5)*lb+y0;
end