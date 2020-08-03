function [result] = step(m)
warning("off");
r=solve1(0,2,m,0.001);
[theta,alpha,y0,s]=sumdg(r,m);
result=alpha+r*2;
end

