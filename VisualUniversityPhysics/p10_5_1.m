clear;
r=0:0.01:5;
B0=1;
B1=B0./r;
B2=B0.*r;
figure
subplot(2,1,1)
plot(r(r<1),zeros(length(r(r<1))),r(r>1),B1(r>1))
title('Բ����Ÿ�Ӧǿ�������仯')

subplot(2,1,2)
plot(r(r<1),B2(r<1),r(r>1),B1(r>1))
title('Բ����Ÿ�Ӧǿ�������仯')


