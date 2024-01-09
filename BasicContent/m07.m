%{
m07 plot(曲线图,散点图,曲线簇 图例,操作图像句柄 行波叠加)

hold on 保持上一幅图像
grid on 加上网格
axis off 隐藏坐标轴
axis equal 保持横纵坐标相等
%}
disp('****实线图****');
% 画一个周期的正弦波，sinx中x为弧长
theta=0:360;    % 定义角度0-360；
x=theta*pi/180; % 角度转弧长
figure
plot(x,sin(x),'r-.','LineWidth',2);
title('正弦波');
xlabel('弧长\itx');ylabel('\ity') % \it斜体，\rm恢复
%{
plot(x,sin(x),'r-.','LineWidth',2);
    param1:横坐标
    param2:纵坐标
    param3:曲线样式
    param4,5:LineWidth 曲线粗细
    
    曲线样式中
    字母代表颜色
        r(红),g(绿),b(蓝),c(青),y(黄),k(黑),w(白)
    4种线型
        -(实线),:(短虚线),-.(点虚线),--(长虚线)
%}
disp('****散点图****');
pause(2);
figure
plot(x,sin(x),'r.','MarkerSize',3);
%{
 plot(x,sin(x),'r.','MarkerSize',3);
    同上
    param3:点的样式
    param4,5:点的大小

    点类型
        .,o(),x,+,s(方形),d(菱形),v(下三角),^.<,>,p,b
%}
clear;
disp('****曲线簇-不同幂函数****');
% 需要使用meshgrid构建同维度的矩阵变量x,矩阵幂参数
mi=[1 2 3 4 5];
x=-2:0.001:2;
[X,Mi]=meshgrid(x,mi);
y=X.^Mi;
figure
plot(x,y(1,:),'r-',...
     x,y(2,:),'g-',...
     x,y(3,:),'b-',...
     x,y(4,:),'c-',...
     x,y(5,:),'k-');
 title('不同幂函数');xlabel('\itx');ylabel('\ity');
 legend('x','x^2','x^3','x^4','x^5');
 axis equal
 axis([-1 1 -1 1 ])
%{
 [X,Mi]=meshgrid(x,mi);
    得到了X为沿着横坐标变化的矩阵，Mi为纵坐标变化的矩阵
    使用meshgrid构建同维度的矩阵变量x,矩阵幂参数;
    meshgrid(自变量向量,其他条件向量)
 
 axis([x1 x2 y1 y2])    设置坐标轴范围x1-x2,y1-y2
 %}
 
 disp('****操作图像句柄-行波叠加****');
 xm=5;
 x=-xm:0.01:xm;
 u1=2*sin(pi*x); % 振幅2，周期2*pi/pi=2,
 u1(x<-4|x>-3)=0; % 只保留一个波峰，方便观察   
 u2=sin(2*pi*x); % A=1,T=1;
 u2(x>4.5|x<4)=0; % 只保留一个波峰，方便观察   
 u3=u1+u2;  % 波叠加
 figure
 subplot(3,1,1);
 h1=plot(x,u1);
 title('右行波')
 subplot(3,1,2)
 h2=plot(x,u2);
 title('左行波')
 subplot(3,1,3)
 h3=plot(x,u3);
 title('波叠加')
 
 pause
 while get(gcf,'CurrentCharacter')~=char(27)
     u1=[u1(length(u1)),u1(1:length(u1)-1)];
     u2=[u2(2:length(u2)),u2(1)];
     u3=u1+u2;
     set(h1,'YData',u1);    % 设置h1的y轴
     set(h2,'YData',u2);    % 设置h2的y轴
     set(h3,'YData',u3);    % ...
     drawnow;
 end
 
 
 
 





