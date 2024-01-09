%{
m12 image(显示图片 灰度图,colormap 圆环 动态圆环)

image 操作二维图像矩阵(操控像素点)
灰度图，单通道图像
%}
disp('****显示图片****')
img=imread('./img/Lenna.jpg');  % 读取图片，得到[400 400 3] 数组,400x400为分辨率，3表示RGB颜色通道
figure
subplot(3,1,1);
image(img)
axis equal off
title('原始图片')
disp('****转灰度图****')
grayImg=rgb2gray(img);
subplot(3,1,2)
image(grayImg);
colormap(gray)
axis equal off
title('灰度图(image+colormap(gray))')
subplot(3,1,3)
imshow(grayImg) % 效果稍好
axis equal off
title('灰度图(imshow)')
%{
image用法一
    image([x y 3])
    x 横坐标长度(像素值) 
    y 纵坐标长度
    3 rgb三个颜色通道
%}

disp('**** colormap颜色映射和画圆环 ****')
r=-10:10;               % 弧长
[X,Y]=meshgrid(r);      % 20*20矩阵,得到X沿横坐标变化矩阵，Y沿纵坐标变化矩阵
R=sqrt(X.^2+Y.^2);      % 每个元素的值为该点到中心的距离
I=cos(R);               % 将每个值带到cos函数，得到I，每一条过中心原点数据，都呈现余弦变化(实现一层层圆环的原理)
I(R>9)=0;               % 将半径大于9的数据置0
figure
image(I*128);           % 将I原始数据对应(颜色强度)增强        
c=linspace(0,1,128)';   % 设置颜色强度映射参数，颜色值只能是0~1
colormap([c,c*0,c*0])   % 颜色映射表
axis equal off

disp('****动态圆环****')
figure
h=image(I*128);
c=linspace(0,1,128)';
colormap([c*1,c*0,c*0]);
axis equal off
title('动态圆环')

dx=0.01;    % 增量
pause
while get(gcf,'CurrentCharacter')~=char(27)
    R=R+dx;     % 正负号 控制圆环移动的方向
    I=cos(R);
    set(h,'CData',I*128);
    drawnow;
end
close all;



