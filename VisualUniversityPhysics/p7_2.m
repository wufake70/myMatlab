% y=[0 -1 0.1 0.2 0.8 1 2 3 255];
% M=zeros(1,length(y),3);         % 
% M(:,:,1)=y;
% image(M);               % M必须是XxYx3(或 XxY)矩阵， MxN表示像素数组，3控制RGB颜色分量

clear
lambda=[750 540 440]* 1e-9;
n=1.5;
k=11;
dx=0.002;       % 2mm
xm=k*dx;
x=linspace(0,xm,1000);
theta=lambda(1)./2/n/dx;        % 劈尖角度
h=k*dx.*tan(theta);             % 劈尖高度
disp(sprintf('劈尖角度:%d,劈尖高度:%d',theta,h));
e=x.*tan(theta);             % 厚度列表
I1=1*cos(pi*(2*n*e/lambda(1)+1/2)).^2;      % 光强分布
M1=zeros(1,length(I1),3);
M1(:,:,1)=I1;
subplot(4,1,1)
image(M1);
title('劈尖的等厚干涉红色条纹')

I2=cos(pi*(2*n*e./lambda(2)+1/2)).^2;
M2=zeros(1,length(I2),3);
M2(:,:,2)=I2;
subplot(4,1,2)
image(M2)
title('劈尖的等厚干涉绿色条纹')

I3=cos(pi*(2*n*e./lambda(3)+1/2)).^2;
M3=zeros(1,length(I3),3);
M3(:,:,3)=I3;
subplot(4,1,3);
image(M3);
title('劈尖的等厚干涉蓝色条纹')

% 三种光同时照射劈尖
M4=M1+M2+M3;        % 三个图像数据直接相加
subplot(4,1,4);
image(M4);










