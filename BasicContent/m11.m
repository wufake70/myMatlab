% m11 stairs(������ͼ)
% ����һЩʾ������
x = -3:0.5:3;
y = sin(x);

figure
plot(x,zeros(1,length(x)),'k');
hold on
stairs(x, y,'r')    % ʹ�� stairs ������������ͼ
stem([x x],[y zeros(1,length(x))],'.');
axis([-3.5 3.5 -2 2]);
% ͼ��ע��
j=1;
for i=x,j=j+1;
    if j>length(x),break;end
    text((i+x(j))/2,y(j-1),sprintf('%.2f',y(j-1)));
    
end

% ��ӱ�ǩ�ͱ���
xlabel('X��')
ylabel('Y��')
title('����ͼʾ��')
