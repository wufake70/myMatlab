% m09 fill(���������ɫ)

x=0:0.01:2*pi*3;
y=sin(x);
plot(x,zeros(1,length(x)),'c-');
fill(x,y,'c');
axis equal

figure
fill([x x],[y zeros(1,length(x))],'c-');    % ��ȷд��
axis equal

%{
fill([x x],[y1,y2],color)
    �Ի����ߵķ�ʽ�������ɫ
%}
pause;
close all

