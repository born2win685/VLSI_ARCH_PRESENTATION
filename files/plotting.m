clc
close all


n=1;

figure(n)
n=n+1;
m=8;
p=1;

subplot(m,1,p)
p=p+1;
plot(CK_X,CK_Y)
grid on;
legend('clk')
xlabel('time(s)')
ylabel('magnitude(V)')
title('CLOCK');
ylim([-0.1 1.5])

subplot(m,1,p)
p=p+1;
plot(D_X,D_Y)
grid on;
legend('D')
xlabel('time(s)')
ylabel('Voltage(V)')
title('D');
ylim([-0.1 1.5])



subplot(m,1,p)
p=p+1;
plot(N1_X,N1_Y)
grid on;
legend('N1')
xlabel('time(s)')
ylabel('Voltage(V)')
title('N1');
ylim([-0.1 1.5])


subplot(m,1,p)
p=p+1;
plot(N2_X,N2_Y)
grid on;
legend('N2')
xlabel('time(s)')
ylabel('Voltage(V)')
title('N2');
ylim([-0.1 1.5])


subplot(m,1,p)
p=p+1;
plot(N3_X,N3_Y)
grid on;
legend('N3')
xlabel('time(s)')
ylabel('Voltage(V)')
title('N3');
ylim([-0.1 1.5])

subplot(m,1,p)
p=p+1;
plot(N4_X,N4_Y)
grid on;
legend('N4')
xlabel('time(s)')
ylabel('Voltage(V)')
title('N4');
ylim([-0.1 1.5])

subplot(m,1,p)
p=p+1;
plot(N5_X,N5_Y)
grid on;
legend('N5')
xlabel('time(s)')
ylabel('Voltage(V)')
title('N5');
ylim([-0.1 1.5])

subplot(m,1,p)
p=p+1;
plot(Q_X,Q_Y)
grid on;
legend('Q')
xlabel('time(s)')
ylabel('Voltage(V)')
title('Q');
ylim([-0.1 1.5])

%xlim([0 4e-5])