% m13 画圆的几种方式,inline内联函数

disp('****方法一****')
x=-1:0.01:1;
%y=sqrt(1-x.^2);

%f=inline('sqrt(1-x.^2)','x');       % 16版之前的内联函数
f=@(x) sqrt(1-x.^2);                  % 新版本的内联函数
y=f(x);
%{
    内联函数可即时求值
    f(1)=0;
%}
figure
plot(x,y,'c',x,-y,'c');
axis equal
title('圆1');

disp('****方法二****')
theta=0:1:360;
hd=theta*pi/180;
x1=sin(hd);
y1=cos(hd);
figure
plot(x1,y1,'c');
axis equal
title('圆2')


