clear;
r=0:0.01:5;
E0=1;
U0=1;
E=E0./(r).^2;
U=U0./r;
figure
subplot(2,1,1)
plot(r(r<1),r(r<1)*0,r(r>1),E(r>1))
title('带电曲面E')
subplot(2,1,2)
plot(r(r<1),ones(length(r(r<1))),r(r>1),U(r>1))
title('带电球面电势')

figure
E1=E0*r;
U1=U0*(3-r.^2)./2;
subplot(2,1,1)
plot(r(r<1),E1(r<1),r(r>1),E(r>1))
title('带电球体E')
subplot(2,1,2)
plot(r(r<1),U1(r<1),r(r>1),U(r>1))
title('带电球体电势')




