% m09 fill(封闭区域填色)

x=0:0.01:2*pi*3;
y=sin(x);
plot(x,zeros(1,length(x)),'c-');
fill(x,y,'c');
axis equal

figure
fill([x x],[y zeros(1,length(x))],'c-');    % 正确写法
axis equal

%{
fill([x x],[y1,y2],color)
    以画竖线的方式，填充颜色
%}
pause;
close all

