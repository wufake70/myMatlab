t=(3:6)*100;    % �¶�K
v=-1400:1400;   % v
[V,T]=meshgrid(v,t);    % ������vΪ��������length(t)�еľ���(��������ͬ)����tΪ��������length(v)�еľ���(��������ͬ)
k=1.38*1e-23;   % ������������
m=32*1.66*1e-27;    % ��ԭ������
FV=sqrt(m./(2*pi*k*T)).*exp(-m*V.^2./(2*k*T));      % ���˹Τ���ʷֲ���
figure
plot(v,FV(1,:),'r-',...
    v,FV(2,:),'g-',...
    v,FV(3,:),'b-',...
    v,FV(4,:),'k-','LineWidth',2)
legend(sprintf('T=%dK',t(1)),...
    sprintf('T=%dK',t(2)),...
    sprintf('T=%dK',t(3)),...
    sprintf('T=%dK',t(4)))
title('��ͬ�¶����˹Τ�ٶȷֲ���')
pause
close all;


