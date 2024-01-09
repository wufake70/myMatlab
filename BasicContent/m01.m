% 常用命令 clc,clear,disp,sprintf,figure,pause,close all,input

%           单行注释
%{          
            多行
            注释
%}

% matlab 赋值语句(a=99)需分号结尾否则报警告，每一行语句都可以分号结尾；
clc         % 清屏
clear       % 清除工作区变量
disp('hello world') % 打印输出语句；传入的字符串,不使用双引号,支持转义字符；
a=1;b=1;
disp(sprintf('%s:%d+%d=%.2f','等式',a,b,a+b));    % 字符串格式化，%s:字符串;%d:整数;%.2f:保留两位小数
disp([0 1 2 ...
      3 4 5]);      % 省略号... 延续代码到下一行

figure      % 创建一个新的图形窗口
plot(0:0.01:1,0:0.01:1) % plot 绘制二维图形的基本函数之一；第一个参数x轴数据(向量)，第二个参数y轴数据(向量)
pause(2)       % 暂停执行，按enter或esc继续执行;可传入时间(单位秒),多少秒后继续执行
close          % 关闭当前图形窗口，加上all关键字，即关闭当前程序所有窗口与；
pause(3);clc;clear;

% input 输入函数
num=input('num=');
disp(sprintf('num=%d;',num));
