% example 13.4
function y = H_eul(u)

h = u;
value = 2;
x = 1;
y1 = 2;

while x<value
    m = 2*y1/x;
    y2 = y1+h*m;
    
    %update
    x = x+h;
    y1 = y2;
end
y = y2;
end