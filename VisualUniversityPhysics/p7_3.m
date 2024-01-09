% r=-10:10;
% [X,Y]=meshgrid(r);      % 20*20����
% R=sqrt(X.^2+Y.^2);      % ÿ��Ԫ�ص�ֵΪ�õ㵽���ĵľ���
% I=cos(R);               % ��ÿ��ֵ����cos�������õ�I��ÿһ��������ԭ�����ݣ����������ұ仯(ʵ��һ���Բ����ԭ��)
% I(R>9)=0;               % ���뾶����9��������0
% figure
% image(I*128);           % ��Iԭʼ���ݶ�Ӧ(��ɫǿ��)��ǿ        
% c=linspace(0,1,128)';   % ������ɫǿ��ӳ���������ɫֵֻ����0~1
% colormap([c,c*0,c*0])   % ��ɫӳ���
% axis equal

rm=5;
r=-rm:0.01:rm;      % ���뾶����
d=0;                % ͹�澵��ƽ�����
[X,Y]=meshgrid(r);  % rά�ȵķ���
R=sqrt(X.^2+Y.^2);
I=cos(pi*(R.^2+2*d+1/2)).^2;
I(R>rm)=0;
figure
h=image(I*64);
c=linspace(0,1,64)';
colormap([c,c*0,c*0]);
axis off equal
title('ţ�ٻ�����ǿ��d�ı仯')

pause
dx=0.01;            % d ������
while 1
    I=cos(pi*(R.^2+2*d+1/2)).^2;
    I(R>rm)=0;
    set(h,'CData',I*64);
    d=d+dx;
    drawnow;
    if get(gcf,'CurrentCharacter')== char(27),close all,break,end;
end



