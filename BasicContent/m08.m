% m08 stem(����ͼ ����,text)
x=0:0.01:4*pi;  % ��������
y1=sin(x);
y2=cos(x);

figure
plot(x,zeros(1,length(x)),'k-');
hold on
plot(x,y1,'r-',...
     x,y2,'b-');

 % �ཻ��ĺ���������
 p=[pi/4 pi/4+pi pi/4+2*pi pi/4+3*pi];
 stem(p,[sin(p(1)) ...
         sin(p(2)) ...
         sin(p(3)) ...
         sin(p(4))],'k*','MarkerSize',1);
%{
stem()
    ����ͼ
    stem(�����꣬�����꣬�����ʽ,��Ĵ�С)
    ����д��
    stem([x x],[y1 y2],'o',...) 
             
%}
text(p(1),sin(p(1)),sprintf('%.2f,%.2f',p(1),sin(p(1))));
text(p(2),sin(p(2)),sprintf('%.2f,%.2f',p(2),sin(p(2))));
text(p(3),sin(p(3)),sprintf('%.2f,%.2f',p(3),sin(p(3))));
text(p(4),sin(p(4)),sprintf('%.2f,%.2f',p(4),sin(p(4))));
%{
text()
    �ڻ�ͼ�����ע����Ϣ
    text(������,�����꣬�ı�)
%}
hold on
axis equal




