u=-0.5:-0.5:-3.5;                     %�����ߵĵ��ƣ�����ɣ�
r0=2.5;
% n=length(u);                           %������ĸ���
r=-1./u;                               %��������
th=linspace(0,2*pi);                   %�Ƕ�����
X=cos(th)'*r;                          %�����ߵ�x����
Y=sin(th)'*r;                          %�����ߵ�y����
figure                                 %����ͼ�δ���
plot(X,Y,'LineWidth',2)                %��Բ
axis equal                             %ʹ��������ͬ
grid on                                %������

th=(0:30:330)*pi/180;                  %�Ƕ�����
x=r0*cos(th);                          %�糡���յ��x����
y=r0*sin(th);                          %�糡���յ��y����
o=zeros(size(th));                     %�糡���������
hold on                                %����ͼ��
quiver(x,y,-x,-y,0,'LineWidth',2)        %������
plot(0,0,'o')                          %������

