clear;
r=0:0.01:5;
B0=1;
B1=B0./r;
B2=B0.*r;
figure
subplot(2,1,1)
plot(r(r<1),zeros(length(r(r<1))),r(r>1),B1(r>1))
title('圆柱面磁感应强度随距离变化')

subplot(2,1,2)
plot(r(r<1),B2(r<1),r(r>1),B1(r>1))
title('圆柱体磁感应强度随距离变化')


