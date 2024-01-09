t=(3:6)*100;    % 温度K
v=-1400:1400;   % v
[V,T]=meshgrid(v,t);    % 构建以v为行向量且length(t)行的矩阵(行向量相同)，以t为列向量且length(v)列的矩阵(列向量相同)
k=1.38*1e-23;   % 玻尔兹曼常数
m=32*1.66*1e-27;    % 氧原子质量
FV=sqrt(m./(2*pi*k*T)).*exp(-m*V.^2./(2*k*T));      % 麦克斯韦速率分布律
figure
plot(v,FV(1,:),'r-',...
    v,FV(2,:),'g-',...
    v,FV(3,:),'b-',...
    v,FV(4,:),'k-','LineWidth',2)
legend(sprintf('T=%dK',t(1)),...
    sprintf('T=%dK',t(2)),...
    sprintf('T=%dK',t(3)),...
    sprintf('T=%dK',t(4)))
title('不同温度麦克斯韦速度分布律')
pause
close all;


