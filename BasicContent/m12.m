%{
m12 image(��ʾͼƬ �Ҷ�ͼ,colormap Բ�� ��̬Բ��)

image ������άͼ�����(�ٿ����ص�)
�Ҷ�ͼ����ͨ��ͼ��
%}
disp('****��ʾͼƬ****')
img=imread('./img/Lenna.jpg');  % ��ȡͼƬ���õ�[400 400 3] ����,400x400Ϊ�ֱ��ʣ�3��ʾRGB��ɫͨ��
figure
subplot(3,1,1);
image(img)
axis equal off
title('ԭʼͼƬ')
disp('****ת�Ҷ�ͼ****')
grayImg=rgb2gray(img);
subplot(3,1,2)
image(grayImg);
colormap(gray)
axis equal off
title('�Ҷ�ͼ(image+colormap(gray))')
subplot(3,1,3)
imshow(grayImg) % Ч���Ժ�
axis equal off
title('�Ҷ�ͼ(imshow)')
%{
image�÷�һ
    image([x y 3])
    x �����곤��(����ֵ) 
    y �����곤��
    3 rgb������ɫͨ��
%}

disp('**** colormap��ɫӳ��ͻ�Բ�� ****')
r=-10:10;               % ����
[X,Y]=meshgrid(r);      % 20*20����,�õ�X�غ�����仯����Y��������仯����
R=sqrt(X.^2+Y.^2);      % ÿ��Ԫ�ص�ֵΪ�õ㵽���ĵľ���
I=cos(R);               % ��ÿ��ֵ����cos�������õ�I��ÿһ��������ԭ�����ݣ����������ұ仯(ʵ��һ���Բ����ԭ��)
I(R>9)=0;               % ���뾶����9��������0
figure
image(I*128);           % ��Iԭʼ���ݶ�Ӧ(��ɫǿ��)��ǿ        
c=linspace(0,1,128)';   % ������ɫǿ��ӳ���������ɫֵֻ����0~1
colormap([c,c*0,c*0])   % ��ɫӳ���
axis equal off

disp('****��̬Բ��****')
figure
h=image(I*128);
c=linspace(0,1,128)';
colormap([c*1,c*0,c*0]);
axis equal off
title('��̬Բ��')

dx=0.01;    % ����
pause
while get(gcf,'CurrentCharacter')~=char(27)
    R=R+dx;     % ������ ����Բ���ƶ��ķ���
    I=cos(R);
    set(h,'CData',I*128);
    drawnow;
end
close all;



