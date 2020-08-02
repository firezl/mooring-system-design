warning("off");
m=1780;
r=solve1(0,1,m,0.0001);
[theta,alpha,y0,s]=sumdg(r,m);
while (theta>=16) || (alpha>=5)
    m=m+1;
    r=solve1(0,1,m,0.0001);
    [theta,alpha,y0,s]=sumdg(r,m);
    disp(theta);
    disp(alpha);
end
disp(m);