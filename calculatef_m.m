function out = calculatef_m (x,p,k)
    out = -k + (x/(1-x))*sqrt((2*p)/(2+x));
end