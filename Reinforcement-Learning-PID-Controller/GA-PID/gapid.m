clear all, close all, clc
dt = 0.001;
PopSize = 30;
MaxGenerations = 60;
s = tf('s');
G = 3.1/(0.2*s^3 + s^2)  %Plant transfer function

rng default  %For Reproducibility 
options = optimoptions(@ga,'PopulationSize',PopSize,'MaxGenerations',MaxGenerations);
[x,fval] = ga(@(K)pidfunc(G,dt,K),3,-eye(3),zeros(3,1),[],[],[-5 -5 -5],[5 5 5],[],options);
x
