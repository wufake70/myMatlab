m=1;g=10;B=1;k=0.4;
t=0:0.01:5;
vmax=(m*g-B)/k;
amax=(m*g-B)/m;
v=vmax-vmax*exp(-k*t/m);
x=vmax+k*vmax*exp(-k*t/m)-k*vmax/m;
figure
% v/t
plot(t,v,'r-');
hold on
% x/t
plot(t,x,'g-')