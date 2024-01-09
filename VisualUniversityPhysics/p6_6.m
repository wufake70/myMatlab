clear;
xm=5;
x=-xm:0.01:xm;
a1=0.5;
a2=0.2;
y1=a1*cos(pi*x);    % 波函数,T=2
y1(x>-3.5|x<-4.5)=0; % 保留一个波峰
figure
subplot(3,1,1)
h1=plot(x,y1);
title('右行波')
axis equal;
axis([-xm xm 0 a1+a2]);

subplot(3,1,2)
y2=a2*cos(pi*x);
y2(x<3.5|x>4.5)=0;
h2=plot(x,y2);
title('左行波')
axis equal;
axis([-xm xm 0 a1+a2]);

y3=y2+y1;
subplot(3,1,3)
h3=plot(x,y3);
title('波叠加');
axis([-xm xm 0 a1+a2])

pause
while 1
    if get(gcf,'CurrentCharacter')==char(97),break,end;
    y1=[y1(length(y1)),y1(1:length(y1)-1)];
    set(h1,'YData',y1);
    y2=[y2(2:length(y2)),y2(1)];
    set(h2,'YData',y2)
    y3=y1+y2;
    set(h3,'YData',y3);
    drawnow
end
pause;
close;

