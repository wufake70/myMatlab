u=-0.5:-0.5:-3.5;                     %等势线的电势（负电荷）
r0=2.5;
% n=length(u);                           %等势面的个数
r=-1./u;                               %距离向量
th=linspace(0,2*pi);                   %角度向量
X=cos(th)'*r;                          %等势线的x坐标
Y=sin(th)'*r;                          %等势线的y坐标
figure                                 %创建图形窗口
plot(X,Y,'LineWidth',2)                %画圆
axis equal                             %使坐标间隔相同
grid on                                %加网格

th=(0:30:330)*pi/180;                  %角度向量
x=r0*cos(th);                          %电场线终点的x坐标
y=r0*sin(th);                          %电场线终点的y坐标
o=zeros(size(th));                     %电场线起点坐标
hold on                                %保持图像
quiver(x,y,-x,-y,0,'LineWidth',2)        %画射线
plot(0,0,'o')                          %画点电荷

