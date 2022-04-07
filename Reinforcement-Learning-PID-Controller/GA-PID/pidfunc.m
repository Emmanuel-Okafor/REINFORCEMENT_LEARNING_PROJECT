function J = pidfunc(G,dt,parms)

s = tf('s');

K = parms(1) + parms(2)/s + parms(3)*s;  %PID transfer function
Loop = series(K,G);
ClosedLoop = feedback(Loop,1);
dt = 0.01;
t = 0:dt:40;

e = 1 - step(feedback(K*G,1),t);
J = trapz(t, abs(e));  %Integral Time Absolute Error

step(ClosedLoop,t)
h = findobj(gcf,'type','line');
set(h,'linewidth',0.8);
drawnow
diary gaLogFile