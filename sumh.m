function [a,y0,s]=sumh(h,m,x,v1,v2)
l=1;
lb=1;
[t1,theta1]=buoy(h,v1,v2);
[t2,theta2,alpha1]=tube(t1,theta1);
[t3,theta3,alpha2]=tube(t2,theta2);
[t4,theta4,alpha3]=tube(t3,theta3);
[t5,theta5,alpha4]=tube(t4,theta4);
[t6,theta6,alpha5]=bucket(t5,theta5,m);
[a,y0,lc]=chain(t6,theta6,x);
if(lc>22.05)
    b=a*asinh((lc-22.05)/a);
    beta=sinh(b/a);
    y0=y0-a*(cosh(b/a)-1);
end
s=h+cos(alpha1)*l+cos(alpha2)*l+cos(alpha3)*l+cos(alpha4)*l+cos(alpha5)*lb+y0;
end
