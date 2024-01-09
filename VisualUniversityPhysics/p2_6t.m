t=0:0.01:7;
v0=1;
R=1;
v=v0./(1+t);
s=log(1+t);
an=v0^2./(1+t).^2/R;
figure
subplot(3,1,1)
plot(t,v,'r-')
title('С����ٶ�����')
xlabel('\itt/\its')
ylabel('\itv/\it(m*s)')
subplot(3,1,2)
plot(t,s,'g-')
title('С���·������')
xlabel('\itt/\its')
ylabel('\its/\itm')
subplot(3,1,3)
plot(t,an,'b-')
title('С��ķ�����ٶ�����')
xlabel('\itt/\its')
ylabel('\itan/\itm*s^2')