% 水平弹簧振子
bp=1;       % 平衡点
A=0.2;      % 振幅 表示小球相对平衡点最大偏移量
xx=0:0.001:bp+A;
n=20;
yy=0.02*sin(xx/(bp+A)*n*2*pi);  % 在指定的范围(0~1.2)内,画出20个T正弦图像
figure
subplot(2,1,1)
plot([1 1],[-2 -4]*0.02)        % 标记平衡位置
hold on
spring=plot(xx,yy);         % 弹簧
plot([0 0],[-0.1 0.1],'r-','LineWidth',2)            % 竖挡板
hold on
plot([0 bp+2*A],[-0.1 -0.1],'r-','LineWidth',2)      % 地面
axis equal;
%axis off
ball=plot(1.2,0,'g.','MarkerSize',50);      % MarkerSize 设置点(球)的大小

pause                                  %暂停
t=0;                                   %初始时刻
dt=0.005;                              %时间间隔(步长)
view(0,90);
while 1                                %无限循环
    if get(gcf,'CurrentCharacter')==char(27),break;end
    x=A*cos(2*pi*t);                    % 运动方程，从最大偏移量开始
    set(ball,'XData',1+x);              % 改变球的x
    xx=linspace(0,1+x,1000);            % 改变弹簧的运动范围
    yy=0.02*sin(xx/(1+x)*n*2*pi);       % 在指定的范围内,画出20个T正弦图像，实现弹簧的伸缩效果
    set(spring,'XData',xx,'YData',yy)
    drawnow
    t=t+dt;
end
t=0:dt:t;
x=A*cos(2*pi*t);
subplot(2,1,2);
plot(t,x,'k-')
xlabel('\itt\rm(时间)') % \it 斜体；\rm 恢复正常字体
ylabel('\itx\rm(偏移量)')
title('弹簧振子的位移')





