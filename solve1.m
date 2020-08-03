function [r]=solve1(x1,x2,m,e,d,t,v1,v2)
x=(x1+x2)/2;
[a,y0,s]=sumh(x,m,t,v1,v2);
disp(x);
if abs(s-d)<=e
    r=x;
    return
end
if s-d<0
    r=solve1(x,x2,m,e,d,t,v1,v2);
else
    r=solve1(x1,x,m,e,d,t,v1,v2);
end
end