clear
% a=plot([0:1:2;3:1:5],[1 2 3 ;4 5 6],'r-')�õ�3��Line,
% �������ڵġ�;����ʾ����
% С��ʵ���ݲ�����
x0=0:0.2:2;     % ��С��ƽ��λ�ã���ʼλ�ã�
len=length(x0);
x1=zeros(1,len); % ʹ��x1����¼ÿһ��С��ƫ����������������ֵ����ʼֵΪ0��
figure
balls=plot(x0,zeros(len),'r.');     % �õ� len ���ص�ͼ��balls��len��Line��ÿ��Line ����һ��ͼ��
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
    if j>len,j=1;end;   % �˲���ͬͬ��
    u=A*sin(2*pi*x0(j)); % С��һ��������ƫ�����ݶ���һ���ģ�
    x1=[u,x1(1:len-1)];  % ����ƫ����
    disp([j,x1]);
    disp('\n')
    % end
    for i=1:len
        x=x0(i)+A*x1(i); % ƽ������+ƫ����(A*��Ӧƫ������ȷ��С��С�����ƶ�������С���ص�)
        
        % ��forѭ��������֮��:
        % ÿһ��Line��ͼ��(ɢ��ͼ)��ͨ�������set��ȫ�����е�һ�㣬
        % ��ÿ��ѭ������һ��С��ļ�г��
        set(balls(i),'XData',ones(len,1)*x);
    end
    drawnow
    j=j+1;
    pause(1.71)   
end
close



