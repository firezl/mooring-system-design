function [r]=solve1(x1,x2,m,e)
x=(x1+x2)/2;
x1,x2
[a,y0,s]=sumh(x);
if abs(s-18)<=e
    r=x;
    return
end
if s-18<0
    r=solve1(x,x2,m,e);
else
    r=solve1(x1,x,m,e);
end
end