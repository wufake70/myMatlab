clear;
xm=4;
x=-xm:0.01:xm;

% ͬƵ�ʲ�ͬ���
y1=1*cos(pi*x);
y2=0.7*cos(pi*x);
figure
subplot(2,1,1)
plot(x,y1,'r-','LineWidth',2);
hold on
plot(x,y2,'b--','LineWidth',2);
title('ͬƵ�ʲ�ͬ���,����ǰ')
subplot(2,1,2)
plot(x,y1+y2,'LineWidth',2);
title('���Ӻ�')



