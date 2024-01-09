%{
 m10 quiver(画二维矢量,放射线 汇聚线)
     矢量场图可用于表示在二维空间中的每个点上的矢量或向量。这些矢量可以表示速度、位移、力等物理量
%}

figure
quiver(0,0,1,1,'autoscale','off');
hold on
quiver(1,1,-1,-1,0)
axis equal
%{
quiver(1,2,3,4,5,6)
    1,2:起始点的坐标
    3,4:起始点的增量分量
    5:自动调整矢量分量比例；两种表示形式,'autoscale','off'/数字,0表示不调整
    6:LineWidth
%}

disp('****画点放射线和汇聚线****');
theta=0:30:330; % 角度
a=theta*pi/180;
x=sin(a);   
y=cos(a);
figure
subplot(2,1,1)
% 点放射线
quiver(zeros(1,length(x)),zeros(1,length(x)),x,y,0) % 确保坐标向量的长度相同***
axis equal
% 汇聚线
subplot(2,1,2)
quiver(x,y,-x,-y,0,'r')
axis equal
%{
***
这里之所以画出 等角度的放射线(汇聚线)
正是利用了 sin(a)^2+cos(a)^2=1，a为角度，
将sin(a)看成 x,cos(a)看成 y,
则刚好为圆的方程 x^2+y^2=1
%}



