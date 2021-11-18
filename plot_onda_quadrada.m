% Igualmente espaçado de 0 a 3pi
t = linspace(0,3*pi);
x = square(t);

plot(t/pi,x,'.-',t/pi,sin(t))
xlabel('t/\pi')
grid on