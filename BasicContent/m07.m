%{
m07 plot(����ͼ,ɢ��ͼ,���ߴ� ͼ��,����ͼ���� �в�����)

hold on ������һ��ͼ��
grid on ��������
axis off ����������
axis equal ���ֺ����������
%}
disp('****ʵ��ͼ****');
% ��һ�����ڵ����Ҳ���sinx��xΪ����
theta=0:360;    % ����Ƕ�0-360��
x=theta*pi/180; % �Ƕ�ת����
figure
plot(x,sin(x),'r-.','LineWidth',2);
title('���Ҳ�');
xlabel('����\itx');ylabel('\ity') % \itб�壬\rm�ָ�
%{
plot(x,sin(x),'r-.','LineWidth',2);
    param1:������
    param2:������
    param3:������ʽ
    param4,5:LineWidth ���ߴ�ϸ
    
    ������ʽ��
    ��ĸ������ɫ
        r(��),g(��),b(��),c(��),y(��),k(��),w(��)
    4������
        -(ʵ��),:(������),-.(������),--(������)
%}
disp('****ɢ��ͼ****');
pause(2);
figure
plot(x,sin(x),'r.','MarkerSize',3);
%{
 plot(x,sin(x),'r.','MarkerSize',3);
    ͬ��
    param3:�����ʽ
    param4,5:��Ĵ�С

    ������
        .,o(),x,+,s(����),d(����),v(������),^.<,>,p,b
%}
clear;
disp('****���ߴ�-��ͬ�ݺ���****');
% ��Ҫʹ��meshgrid����ͬά�ȵľ������x,�����ݲ���
mi=[1 2 3 4 5];
x=-2:0.001:2;
[X,Mi]=meshgrid(x,mi);
y=X.^Mi;
figure
plot(x,y(1,:),'r-',...
     x,y(2,:),'g-',...
     x,y(3,:),'b-',...
     x,y(4,:),'c-',...
     x,y(5,:),'k-');
 title('��ͬ�ݺ���');xlabel('\itx');ylabel('\ity');
 legend('x','x^2','x^3','x^4','x^5');
 axis equal
 axis([-1 1 -1 1 ])
%{
 [X,Mi]=meshgrid(x,mi);
    �õ���XΪ���ź�����仯�ľ���MiΪ������仯�ľ���
    ʹ��meshgrid����ͬά�ȵľ������x,�����ݲ���;
    meshgrid(�Ա�������,������������)
 
 axis([x1 x2 y1 y2])    ���������᷶Χx1-x2,y1-y2
 %}
 
 disp('****����ͼ����-�в�����****');
 xm=5;
 x=-xm:0.01:xm;
 u1=2*sin(pi*x); % ���2������2*pi/pi=2,
 u1(x<-4|x>-3)=0; % ֻ����һ�����壬����۲�   
 u2=sin(2*pi*x); % A=1,T=1;
 u2(x>4.5|x<4)=0; % ֻ����һ�����壬����۲�   
 u3=u1+u2;  % ������
 figure
 subplot(3,1,1);
 h1=plot(x,u1);
 title('���в�')
 subplot(3,1,2)
 h2=plot(x,u2);
 title('���в�')
 subplot(3,1,3)
 h3=plot(x,u3);
 title('������')
 
 pause
 while get(gcf,'CurrentCharacter')~=char(27)
     u1=[u1(length(u1)),u1(1:length(u1)-1)];
     u2=[u2(2:length(u2)),u2(1)];
     u3=u1+u2;
     set(h1,'YData',u1);    % ����h1��y��
     set(h2,'YData',u2);    % ����h2��y��
     set(h3,'YData',u3);    % ...
     drawnow;
 end
 
 
 
 





