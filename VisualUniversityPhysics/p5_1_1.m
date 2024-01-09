% ��ֱ��������
bp=1;
A=0.2;
n=20;
xx=linspace(0,bp+A,1000);        % �˶����Χ
yy=0.02*sin(xx/(bp+A)*n*2*pi);      % ��ָ���ķ�Χ(0~1.2)��,����20��T����ͼ��
figure

subplot(2,1,1)
plot([-0.1 0.1],[0 0],'r-','LineWidth',2)   % �ᵲ��
hold on 
spring=plot(yy,-xx);                % ����
ball=plot(0,-bp-A,'g.','MarkerSize',50);    % ��
plot([-4 -2]*0.02,[-bp -bp],'b-')       % ���ƽ���
axis equal
axis([-1,1,-1.4,0]); % �̶�x,y�᳤�ȡ�

pause;
t=0;
dt=0.01;

while 1
    if get(gcf,'CurrentCharacter')==char(27) break;end
    x=A*cos(2*pi*t);        % ����ƫ����
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
xlabel('\itt\rm(ʱ��)') % \it б�壻\rm �ָ���������
ylabel('\itx\rm(ƫ����)')
title('�������ӵ�λ��')
    