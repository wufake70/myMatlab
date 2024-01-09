% m04 分支,循环

% 分支结构
disp('****二分支结构****')
num=input('input a num:');
if num<=0 
    disp('num<=0');
else
    disp('num为正数;');
end
disp('****多分支结构****')
% switch 语句

% 循环结构
disp('****循环结构****');
disp('**** while ****');
x=0:0.1:4*pi;
y=sin(x);
figure;
h=plot(x,y);
title('移动的正弦波')
pause
while 1
    if get(gcf,'CurrentCharacter') == char(27),close;break;end
    y=[y(length(y)),y(1:length(y)-1)];
    set(h,'YData',y)
    drawnow;
end

disp('**** for ****');
x=0:1:10;
for i=x
    disp(i);
end




    