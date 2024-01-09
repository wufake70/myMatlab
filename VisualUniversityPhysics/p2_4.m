% 标量a，矢量b，必须a./b
% log 默认以e为底
k=1;
m=1;
t=linspace(0,10,1000);
v0=1;
v=v0*exp(-k/m*t);
s=v0*m/k-v0*m/k*exp(-k/m*t);
figure
% v/t
plot(t,v,'r--','LineWidth',2);
hold on
% s/t
plot(t,s,'b.','LineWidth',2);

% an、at
figure
R=1;
an=(v0^2*exp(-2*k*t/m))/R;
at=(k*v0*exp(-k*t/m))/m;
tx=m/k*log(m*v0/k/R);
anx=(v0^2*exp(-2*k*tx/m))/R;
hold on
stem(tx,anx,'--')
plot(t,an,'r-',t,at,'g--','LineWidth',2);



