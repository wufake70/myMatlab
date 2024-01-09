clear;
m=32*1.66E-27;
k=1.38E-23;
t=273;
dv=100;
vm=1200;
v=dv/2:dv:vm-dv/2;
%fv=4*pi*(m/(2*pi*k*t))^(3/2).*v.^2.*exp(-m*v.^2./(2*k*t));
f=inline('4*pi*(m/(2*pi*k*t))^(3/2).*v.^2.*exp(-m*v.^2./(2*k*t))','m','k','t','v'); % 使用内联函数
fv=f(m,k,t,v);

figure
stairs(v-dv/2,fv,'k');   % 画梯形折线图
hold on;        
stem(v-dv/2,fv,'k');     % 画杆图
title('麦克斯韦速率分布率的梯形直方杆图')

c='rbgcmy';
pause
for i=1:length(c)
    dv=dv/2;
    v=dv/2:dv:vm-dv/2;
    %fv=4*pi*(m/(2*pi*k*t))^(3/2).*v.^2.*exp(-m*v.^2./(2*k*t));
    fv=f(m,k,t,v);
    stairs(v-dv/2,fv,c(i));  % 画梯形折线图
    hold on;        
    stem(v-dv/2,fv,c(i));     % 画杆图
    pause
end
close all;






