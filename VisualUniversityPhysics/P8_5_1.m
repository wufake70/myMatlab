clear;
x=0:0.01:3;
v=[1 2/sqrt(pi) sqrt(3/2)];
f=inline('4/sqrt(pi).*x.^2.*exp(-x.^2)','x');
figure
plot(x,f(x));
hold on
plot([v(1) v(1)],[f(v(1)) 0],'o-',...
    [v(2) v(2)],[f(v(2)) 0],'^-',...
    [v(3) v(3)],[f(v(3)) 0],'*-')
legend('最该然速率','平均速率','方均根速率')

fill([x(x<1) 1],[f(x(x<1)) 0],'c')

title('麦克斯韦速率的三种速率')
text(v(1),f(v(1)),sprintf('%.2f,%.2f',v(1),f(v(1))))
text(v(2),f(v(2)),sprintf('%.2f,%.2f',v(2),f(v(2))))
text(v(3),f(v(3)),sprintf('%.2f,%.2f',v(3),f(v(3))))