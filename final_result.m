function [a,lc,alpha1,alpha2,alpha3,alpha4,alpha5,s,d,y0]=final_result(h)
v=12;
l=1;
lb=1;
[t1,theta1]=buoy(h,v);
[t2,theta2,alpha1]=tube(t1,theta1);
[t3,theta3,alpha2]=tube(t2,theta2);
[t4,theta4,alpha3]=tube(t3,theta3);
[t5,theta5,alpha4]=tube(t4,theta4);
[t6,theta6,alpha5]=bucket(t5,theta5,1200);
[a,y0,lc]=chain(t6,theta6);
if(lc>22.05)
    b=a*asinh((lc-22.05)/a);
    beta=sinh(b/a);
    if(beta/pi*180>16)
        "锚已经被拖行"
    end
    y0=y0-a*(cosh(b/a)-1);
    d=acosh(y0/a+1)*a+sin(alpha2)*l+sin(alpha3)*l+sin(alpha4)*l+sin(alpha5)*lb-b;
else
    d=acosh(y0/a+1)*a+sin(alpha2)*l+sin(alpha3)*l+sin(alpha4)*l+sin(alpha5)*lb+22.05-lc;
end
s=h+cos(alpha1)*l+cos(alpha2)*l+cos(alpha3)*l+cos(alpha4)*l+cos(alpha5)*lb+y0;
end