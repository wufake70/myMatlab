% ˮƽ����ģ��Შ����
clear;
xm=2;
dx=0.001;       % ����̫С���仯����
x=0:dx:xm;
len=length(x);  % ˮƽ���ӳ���
y=zeros(len,1)';   % ˮƽ���ӳ�ʼ״̬
w=plot(x,y,'r-','LineWidth',2);
axis([0 xm -xm xm]) % �̶�x��y�᷶Χ
pause;

dt=dx;
t=0;
A=0.2; % ���

while 1
    if get(gcf,'CurrentCharacter') == char(27),break,end
    u=A*sin(2*pi*t); % �Შ�γɲ�����������
    y=[u,y(1:len-1)]; % ����y������
    set(w,'YData',y);
    drawnow
    t=t+dt;
end
close




