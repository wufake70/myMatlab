% m13 ��Բ�ļ��ַ�ʽ,inline��������

disp('****����һ****')
x=-1:0.01:1;
%y=sqrt(1-x.^2);

%f=inline('sqrt(1-x.^2)','x');       % 16��֮ǰ����������
f=@(x) sqrt(1-x.^2);                  % �°汾����������
y=f(x);
%{
    ���������ɼ�ʱ��ֵ
    f(1)=0;
%}
figure
plot(x,y,'c',x,-y,'c');
axis equal
title('Բ1');

disp('****������****')
theta=0:1:360;
hd=theta*pi/180;
x1=sin(hd);
y1=cos(hd);
figure
plot(x1,y1,'c');
axis equal
title('Բ2')


