T = 10*(1/50);
Fs = 1000;
dt = 1/Fs;
t = 0:dt:T-dt;
x = sawtooth(2*pi*50*t);
plot(t,x)
grid on