function y = H_poly(u)
f = @(x,y) (2*y/x);


h = u;
x = 1:h:2;
y(1) = 2;
n = length(x);

for i=1:n
    m1 = f(x(i),y(i));
    m2 = f(x(i)+h/2,y(i)+m1*h/2);
    y(i+1) = y(i)+m2*h;
end
y = y(i);
end