t = 0 : 1/1e3 : 1; % 1 kHz sample freq for 1 s
d = 0 : 1/3 : 1;   % 3 Hz repetition frequency
y = pulstran(t,d,'tripuls',0.1, -1);

plot(t,y)
xlabel 'Time (s)', ylabel Waveform
