function y = E_rko()
f = @(x,y) (2*y/x);


h = 0.25;
x = 1:h:2;
y(1) = 2;
n = length(x);
disp(n);

for i=1:n
    
    m1 = f(x(i),y(i));
    m2 = f(x(i)+h/2,y(i)+m1*h/2);
    m3 = f(x(i)+h/2,y(i)+m2*h/2);
    m4 = f(x(i)+h,y(i)+m3*h);
    y(i+1) = y(i)+((m1+2*m2+2*m3+m4)/6)*h;
    
end
end