clear
% a=plot([0:1:2;3:1:5],[1 2 3 ;4 5 6],'r-')得到3个Line,
% 中括号内的‘;’表示换行
% 小球实现纵波过程
x0=0:0.2:2;     % 各小球平衡位置（初始位置）
len=length(x0);
x1=zeros(1,len); % 使用x1来记录每一个小球偏移量，即波函数的值，初始值为0；
figure
balls=plot(x0,zeros(len),'r.');     % 得到 len 层重叠图像，balls有len个Line，每个Line 控制一层图像
for i=1:len
    set(balls(i),'MarkerSize',20);
end
axis([-0.5,2.8,-1,1])

A=0.2;
pause
j=1;

while 1
    if get(gcf,'CurrentCharacter')==char(27),break,end;
    % if j>len
        %x1=[x1(len),x1(1:len-1)];
    % else
    if j>len,j=1;end;   % 此操作同同上
    u=A*sin(2*pi*x0(j)); % 小球一个周期内偏移数据都是一样的，
    x1=[u,x1(1:len-1)];  % 更新偏移量
    disp([j,x1]);
    disp('\n')
    % end
    for i=1:len
        x=x0(i)+A*x1(i); % 平衡坐标+偏移量(A*对应偏移量，确保小球小距离移动，避免小球重叠)
        
        % 该for循环的巧妙之处:
        % 每一个Line的图像(散点图)，通过下面的set后，全部集中到一点，
        % 即每次循环控制一个小球的简谐振动
        set(balls(i),'XData',ones(len,1)*x);
    end
    drawnow
    j=j+1;
    pause(1.71)   
end
close



