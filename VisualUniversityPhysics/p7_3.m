% r=-10:10;
% [X,Y]=meshgrid(r);      % 20*20矩阵
% R=sqrt(X.^2+Y.^2);      % 每个元素的值为该点到中心的距离
% I=cos(R);               % 将每个值带到cos函数，得到I，每一条过中心原点数据，都呈现余弦变化(实现一层层圆环的原理)
% I(R>9)=0;               % 将半径大于9的数据置0
% figure
% image(I*128);           % 将I原始数据对应(颜色强度)增强        
% c=linspace(0,1,128)';   % 设置颜色强度映射参数，颜色值只能是0~1
% colormap([c,c*0,c*0])   % 颜色映射表
% axis equal

rm=5;
r=-rm:0.01:rm;      % 环半径向量
d=0;                % 凸面镜到平板距离
[X,Y]=meshgrid(r);  % r维度的方阵
R=sqrt(X.^2+Y.^2);
I=cos(pi*(R.^2+2*d+1/2)).^2;
I(R>rm)=0;
figure
h=image(I*64);
c=linspace(0,1,64)';
colormap([c,c*0,c*0]);
axis off equal
title('牛顿环，光强随d的变化')

pause
dx=0.01;            % d 的增量
while 1
    I=cos(pi*(R.^2+2*d+1/2)).^2;
    I(R>rm)=0;
    set(h,'CData',I*64);
    d=d+dx;
    drawnow;
    if get(gcf,'CurrentCharacter')== char(27),close all,break,end;
end



