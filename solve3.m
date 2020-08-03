function [r,m,alpha,alpha1,alpha2,alpha3,alpha4,a,lc]=solve3(d,x,v1,v2)
l=100;
m=0;
[r,m,alpha,alpha1,alpha2,alpha3,alpha4,a,lc]=solve2(m,l,d,x,v1,v2);
m=m-l;
l=10;
[r,m,alpha,alpha1,alpha2,alpha3,alpha4,a,lc]=solve2(m,l,d,x,v1,v2);
m=m-l;
l=1;
[r,m,alpha,alpha1,alpha2,alpha3,alpha4,a,lc]=solve2(m,l,d,x,v1,v2);
end