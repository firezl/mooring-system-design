function [r,m,alpha,alpha1,alpha2,alpha3,alpha4,a,lc]=solve2(m,l,d,x,v1,v2)
r=solve1(0,2,m,0.001,d,x,v1,v2);
[theta,alpha,alpha1,alpha2,alpha3,alpha4,y0,s,a,lc]=sumdg(r,m,x,v1,v2);
while (abs(theta)>=16) || (abs(alpha)>=5)
    m=m+l;
    r=solve1(0,2,m,0.001,d,x,v1,v2);
    [theta,alpha,alpha1,alpha2,alpha3,alpha4,y0,s,a,lc]=sumdg(r,m,x,v1,v2);
    disp(theta);
    disp(alpha);
end
end