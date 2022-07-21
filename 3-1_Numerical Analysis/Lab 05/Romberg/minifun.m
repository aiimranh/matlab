function x = minifun(i,a,b)
    hi = @(i) ((b-a)/2^i);
    f = @(x) (1/x);
    temp = 0;
    u = hi(i);
    for k = 1:2*u:2^(i-1)
        temp = temp + u*f(k+u);
    end
    x = temp;
end