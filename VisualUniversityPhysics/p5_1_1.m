% 竖直弹簧振子
bp=1;
A=0.2;
n=20;
xx=linspace(0,bp+A,1000);        % 运动最大范围
yy=0.02*sin(xx/(bp+A)*n*2*pi);      % 在指定的范围(0~1.2)内,画出20个T正弦图像
figure

subplot(2,1,1)
plot([-0.1 0.1],[0 0],'r-','LineWidth',2)   % 横挡板
hold on 
spring=plot(yy,-xx);                % 弹簧
ball=plot(0,-bp-A,'g.','MarkerSize',50);    % 球
plot([-4 -2]*0.02,[-bp -bp],'b-')       % 标记平衡点
axis equal
axis([-1,1,-1.4,0]); % 固定x,y轴长度。

pause;
t=0;
dt=0.01;

while 1
    if get(gcf,'CurrentCharacter')==char(27) break;end
    x=A*cos(2*pi*t);        % 计算偏移量
    set(ball,'YData',-bp-x);
    xx=linspace(0,bp+x,1000);
    yy=0.02*sin(xx/(bp+x)*n*2*pi);
    set(spring,'XData',yy,'YData',-xx);
    drawnow;
    t=t+dt;
end
t=0:dt:t;
x=A*cos(2*pi*t);
subplot(2,1,2);
plot(t,x,'k-')
xlabel('\itt\rm(时间)') % \it 斜体；\rm 恢复正常字体
ylabel('\itx\rm(偏移量)')
title('弹簧振子的位移')
    