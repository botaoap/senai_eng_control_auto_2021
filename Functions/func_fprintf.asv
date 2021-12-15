function freefall
%freefalli:interactivebungeevelocity
%freefalliinteractivecomputationofthe
%free-fallvelocityofanobject
%withsecond-orderdrag.
g = 9.81;%accelerationofgravity
m = input('Mass(kg):');
cd = input('Dragcoefficient(kg/m):');
t = input('Time(s):');
v = sqrt(g * m / cd)*tanh(sqrt(g * cd / m) * t);
disp('')
fprintf('The velocity is %8.4f m/s\n', v)

