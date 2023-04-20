clc
clear all

su_vol=[ 0.6 0.7 0.8 0.9 1 1.2];
s_pro=[55.56 33.3 11.1 10.08 9.2 2.1];
h_pro=[-21 -5 1.1 1.1 1.1 1 ];
s_s2cff=[32.67 20.23 9.36 9.25 9.18 9.10];
h_s2cff=[2.3 1.5 1.4 1.4 1.2 1];
s_spc=[360 130 77.74 58 47.8 37.9];
h_spc=[180 169 73.3 35.3 19.7 16];
s_tgff=[300 213 143 88 67.89 46];
h_tgff=[-300 -252 -91 -62 -32 0];

n=1;
figure(n)
n=n+1;
plot(su_vol,s_pro,'r')
hold on
plot(su_vol,s_s2cff,'cyan')
plot(su_vol,s_spc,'black')
plot(su_vol,s_tgff)
hold off
legend('PROPOSED' , 'S2CFF' ,'SPC-18T','TGFF');
xlabel('supply voltage(V)')
ylabel('setup time(ps)')

figure(n)
n=n+1;
plot(su_vol,h_pro,'r')
hold on
plot(su_vol,h_s2cff,'cyan')
plot(su_vol,h_spc,'black')
plot(su_vol,h_tgff)
hold off
legend('PROPOSED' , 'S2CFF' ,'SPC-18T','TGFF');
xlabel('supply voltage(V)')
ylabel('hold time(ps)')
%ylim([-100 200])

np_pro=[0.4714 0.5192 0.5354 0.5660 0.5524 0.5814 ];
np_s2cff=[0.8142 0.8509 0.8971 0.9425 0.9126 0.9425];
np_spc=[0.6857 0.7163 0.7092 0.7643 0.7336 0.7333];
np_tgff=[1 1 1 1 1 1];
supply_vol=[0.6 0.7 0.8 0.9 1 1.1];


figure(n)
n=n+1;
plot(supply_vol,np_pro,'r')
hold on
plot(supply_vol,np_s2cff,'cyan')
plot(supply_vol,np_spc,'black')
plot(supply_vol,np_tgff)
hold off
legend('PROPOSED' , 'S2CFF' ,'SPC-18T','TGFF');
xlabel('supply voltage(V)')
ylabel('Normalised power(nW)')
ylim([0.4 1.2])
xlim([0.6 1.1])

npd_pro=[0.075 0.5814 0.9259 0.9455];
npd_s2cff=[0.3727 0.7574 0.9253 0.9777 ];
npd_spc=[0.3022 0.7333 0.7805 0.9803];
npd_tgff=[1 1 1 1];
da=[0 10 20 50];

figure(n)
n=n+1;
plot(da,npd_pro,'r')
hold on
plot(da,npd_s2cff,'cyan')
plot(da,npd_spc,'black')
plot(da,npd_tgff)
hold off
legend('PROPOSED' , 'S2CFF' ,'SPC-18T','TGFF');
xlabel('data activity(%)')
ylabel('Normalised power(nW)')
ylim([0 1.2])
xlim([0 50])