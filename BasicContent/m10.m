%{
 m10 quiver(����άʸ��,������ �����)
     ʸ����ͼ�����ڱ�ʾ�ڶ�ά�ռ��е�ÿ�����ϵ�ʸ������������Щʸ�����Ա�ʾ�ٶȡ�λ�ơ�����������
%}

figure
quiver(0,0,1,1,'autoscale','off');
hold on
quiver(1,1,-1,-1,0)
axis equal
%{
quiver(1,2,3,4,5,6)
    1,2:��ʼ�������
    3,4:��ʼ�����������
    5:�Զ�����ʸ���������������ֱ�ʾ��ʽ,'autoscale','off'/����,0��ʾ������
    6:LineWidth
%}

disp('****��������ߺͻ����****');
theta=0:30:330; % �Ƕ�
a=theta*pi/180;
x=sin(a);   
y=cos(a);
figure
subplot(2,1,1)
% �������
quiver(zeros(1,length(x)),zeros(1,length(x)),x,y,0) % ȷ�����������ĳ�����ͬ***
axis equal
% �����
subplot(2,1,2)
quiver(x,y,-x,-y,0,'r')
axis equal
%{
***
����֮���Ի��� �ȽǶȵķ�����(�����)
���������� sin(a)^2+cos(a)^2=1��aΪ�Ƕȣ�
��sin(a)���� x,cos(a)���� y,
��պ�ΪԲ�ķ��� x^2+y^2=1
%}



