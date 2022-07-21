function x = comfun(j,r1,r2)
    f = @(j) ((4^j * r1 - r2)/(4^j - 1));
    x = f(j);
end