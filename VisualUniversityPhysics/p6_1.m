% 水平绳子模拟横波过程
clear;
xm=2;
dx=0.001;       % 设置太小，变化很慢
x=0:dx:xm;
len=length(x);  % 水平绳子长度
y=zeros(len,1)';   % 水平绳子初始状态
w=plot(x,y,'r-','LineWidth',2);
axis([0 xm -xm xm]) % 固定x、y轴范围
pause;

dt=dx;
t=0;
A=0.2; % 振幅

while 1
    if get(gcf,'CurrentCharacter') == char(27),break,end
    u=A*sin(2*pi*t); % 横波形成产生的新数据
    y=[u,y(1:len-1)]; % 更新y轴数据
    set(w,'YData',y);
    drawnow
    t=t+dt;
end
close




