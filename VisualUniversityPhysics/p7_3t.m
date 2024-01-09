% ��7.3
rm=5;
r=-rm:0.01:rm;      % ���뾶����
d=0;                % ͹�澵��ƽ�����
[X,Y]=meshgrid(r);  % rά�ȵķ���
R=sqrt(X.^2+Y.^2);
I_r=cos(pi*(R.^2+2*d+1/2)).^2;
I_r(R>rm)=0;
I_r(:,1:ceil(size(I_r,1)/2))=0;
I_l=cos(pi*(R.^2+2*d+1)).^2;
I_l(R>rm)=0;
I_l(:,ceil(size(I_r,1)/2):size(I_r,1))=0;
I=I_r+I_l;
figure
h=image(I*64);
c=linspace(0,1,64)';
colormap([c,c*0,c*0]);
axis off equal
title('ţ�ٻ�����ǿ��d�ı仯')

pause
dx=0.01;            % d ������
while 1
    I_r=cos(pi*(R.^2+2*d+1/2)).^2;
    I_r(R>rm)=0;
    I_r(:,1:ceil(size(I_r,1)/2))=0;
    I_l=cos(pi*(R.^2+2*d+1)).^2;
    I_l(R>rm)=0;
    I_l(:,ceil(size(I_l,1)/2):size(I_l,1))=0;
    I=I_l+I_r;
    set(h,'CData',I*64);
    d=d+dx;
    drawnow;
    if get(gcf,'CurrentCharacter')== char(27),close all,break,end;
end
