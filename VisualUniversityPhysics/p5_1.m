% ˮƽ��������
bp=1;       % ƽ���
A=0.2;      % ��� ��ʾС�����ƽ������ƫ����
xx=0:0.001:bp+A;
n=20;
yy=0.02*sin(xx/(bp+A)*n*2*pi);  % ��ָ���ķ�Χ(0~1.2)��,����20��T����ͼ��
figure
subplot(2,1,1)
plot([1 1],[-2 -4]*0.02)        % ���ƽ��λ��
hold on
spring=plot(xx,yy);         % ����
plot([0 0],[-0.1 0.1],'r-','LineWidth',2)            % ������
hold on
plot([0 bp+2*A],[-0.1 -0.1],'r-','LineWidth',2)      % ����
axis equal;
%axis off
ball=plot(1.2,0,'g.','MarkerSize',50);      % MarkerSize ���õ�(��)�Ĵ�С

pause                                  %��ͣ
t=0;                                   %��ʼʱ��
dt=0.005;                              %ʱ����(����)
view(0,90);
while 1                                %����ѭ��
    if get(gcf,'CurrentCharacter')==char(27),break;end
    x=A*cos(2*pi*t);                    % �˶����̣������ƫ������ʼ
    set(ball,'XData',1+x);              % �ı����x
    xx=linspace(0,1+x,1000);            % �ı䵯�ɵ��˶���Χ
    yy=0.02*sin(xx/(1+x)*n*2*pi);       % ��ָ���ķ�Χ��,����20��T����ͼ��ʵ�ֵ��ɵ�����Ч��
    set(spring,'XData',xx,'YData',yy)
    drawnow
    t=t+dt;
end
t=0:dt:t;
x=A*cos(2*pi*t);
subplot(2,1,2);
plot(t,x,'k-')
xlabel('\itt\rm(ʱ��)') % \it б�壻\rm �ָ���������
ylabel('\itx\rm(ƫ����)')
title('�������ӵ�λ��')





