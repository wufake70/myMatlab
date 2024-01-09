% m11 stairs(画梯形图)
% 创建一些示例数据
x = -3:0.5:3;
y = sin(x);

figure
plot(x,zeros(1,length(x)),'k');
hold on
stairs(x, y,'r')    % 使用 stairs 函数创建阶梯图
stem([x x],[y zeros(1,length(x))],'.');
axis([-3.5 3.5 -2 2]);
% 图像注释
j=1;
for i=x,j=j+1;
    if j>length(x),break;end
    text((i+x(j))/2,y(j-1),sprintf('%.2f',y(j-1)));
    
end

% 添加标签和标题
xlabel('X轴')
ylabel('Y轴')
title('阶梯图示例')
