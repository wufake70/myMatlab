% m04 ��֧,ѭ��

% ��֧�ṹ
disp('****����֧�ṹ****')
num=input('input a num:');
if num<=0 
    disp('num<=0');
else
    disp('numΪ����;');
end
disp('****���֧�ṹ****')
% switch ���

% ѭ���ṹ
disp('****ѭ���ṹ****');
disp('**** while ****');
x=0:0.1:4*pi;
y=sin(x);
figure;
h=plot(x,y);
title('�ƶ������Ҳ�')
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




    