% y=[0 -1 0.1 0.2 0.8 1 2 3 255];
% M=zeros(1,length(y),3);         % 
% M(:,:,1)=y;
% image(M);               % M������XxYx3(�� XxY)���� MxN��ʾ�������飬3����RGB��ɫ����

clear
lambda=[750 540 440]* 1e-9;
n=1.5;
k=11;
dx=0.002;       % 2mm
xm=k*dx;
x=linspace(0,xm,1000);
theta=lambda(1)./2/n/dx;        % ����Ƕ�
h=k*dx.*tan(theta);             % ����߶�
disp(sprintf('����Ƕ�:%d,����߶�:%d',theta,h));
e=x.*tan(theta);             % ����б�
I1=1*cos(pi*(2*n*e/lambda(1)+1/2)).^2;      % ��ǿ�ֲ�
M1=zeros(1,length(I1),3);
M1(:,:,1)=I1;
subplot(4,1,1)
image(M1);
title('����ĵȺ�����ɫ����')

I2=cos(pi*(2*n*e./lambda(2)+1/2)).^2;
M2=zeros(1,length(I2),3);
M2(:,:,2)=I2;
subplot(4,1,2)
image(M2)
title('����ĵȺ������ɫ����')

I3=cos(pi*(2*n*e./lambda(3)+1/2)).^2;
M3=zeros(1,length(I3),3);
M3(:,:,3)=I3;
subplot(4,1,3);
image(M3);
title('����ĵȺ������ɫ����')

% ���ֹ�ͬʱ��������
M4=M1+M2+M3;        % ����ͼ������ֱ�����
subplot(4,1,4);
image(M4);










