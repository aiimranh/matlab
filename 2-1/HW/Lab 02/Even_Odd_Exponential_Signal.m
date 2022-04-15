t=-3:0.01:3;
x=@(t) exp(-t).*t>0 + 0.5*(t==0);
xe=(x(t)+x(-t))/2;
xo=(x(t)-x(-t))/2;
subplot(3,1,1);
plot(t,x(t));
title('Your signal x')
subplot(3,1,2);
plot(t,xe);
title('Even part')
subplot(3,1,3);
plot(t,xo);
title('Odd part')