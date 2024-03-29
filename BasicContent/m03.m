% m03 矩阵运算,数组运算

% 1.矩阵运算(线性代数)，加减乘、转置、逆矩阵、点乘、叉乘
A=ones(3);
B=ones(3)*3;
% ...



% 2.数组运算，可针对向量、矩阵和多维数组的对应元素执行逐元素运算，使用点号运算符，作用于后面数组
% *** 数组运算符: .*, ./, .^;避免使用 .+, .-; ***
x=1:10;
disp('*****标量与数组运算*****')
% 加法,+同.+
t1=x+1;
t2=1.+x;    % 使用点号运算符，只能作用于后面数组，标量则报错**
if t1==t2, disp('x+1==1.+x,yes'); end
% 减法,同上
t1=x-1;
t2=-(1.-x);
if t1==t2,disp('x-1==-(1.-x),yes');end
% 乘法
t1=2*x;
t2=x.*2;
if t1==t2, disp('x*1==2.*x,yes'); end
% 减法,同上
t1=x/10;
t2=x./10;
if t1==t2,disp('x/10==x./10,yes');end
% t1=1/x;       % 1/x报维度错误，只有1./x ***
t2=1./x;
disp('1/x报维度错误，只有1./x');clear;


disp('****数组与数组运算****');
% 维度必须一致，点对点运算
x=1:10;y=11:20;
% 加法 +;减法-;
% 乘法,x.*y==y.*x,yes;x*y为矩阵乘法，不可交换位置,且需要x行元素等于y的列元素
t1=x.*y;
t2=y.*x;
if t1==t2,disp('x.*y==y.*x,yes');end
% 除法，同上，x./y==y./x;

