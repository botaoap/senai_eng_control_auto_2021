function v = freefall(t, m, cd)
%freefall:bungeevelocitywithsecond-orderdrag
%v=freefall(t,m,cd)computesthefree-fallvelocity
%ofanobjectwithsecond-orderdrag
%input:
%t=time(s)
%m=mass(kg)
%cd=second-orderdragcoefficient(kg/m)
%output:
%v=downwardvelocity(m/s)
g = 9.81;%accelerationofgravity
v = sqrt(g * m / cd)*tanh(sqrt(g * cd / m) * t);
