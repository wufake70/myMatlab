clear;
m=32*1.66E-27;
k=1.38E-23;
t=273;
dv=100;
vm=1200;
v=dv/2:dv:vm-dv/2;
%fv=4*pi*(m/(2*pi*k*t))^(3/2).*v.^2.*exp(-m*v.^2./(2*k*t));
f=inline('4*pi*(m/(2*pi*k*t))^(3/2).*v.^2.*exp(-m*v.^2./(2*k*t))','m','k','t','v'); % ʹ����������
fv=f(m,k,t,v);

figure
stairs(v-dv/2,fv,'k');   % ����������ͼ
hold on;        
stem(v-dv/2,fv,'k');     % ����ͼ
title('���˹Τ���ʷֲ��ʵ�����ֱ����ͼ')

c='rbgcmy';
pause
for i=1:length(c)
    dv=dv/2;
    v=dv/2:dv:vm-dv/2;
    %fv=4*pi*(m/(2*pi*k*t))^(3/2).*v.^2.*exp(-m*v.^2./(2*k*t));
    fv=f(m,k,t,v);
    stairs(v-dv/2,fv,c(i));  % ����������ͼ
    hold on;        
    stem(v-dv/2,fv,c(i));     % ����ͼ
    pause
end
close all;






