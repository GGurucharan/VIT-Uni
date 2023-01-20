clc 
clear all
close all
x = 0:0.1:2*pi;
subplot(2,1,1)
plot(x,cos(x),'r*')
subplot(2,1,2)
plot(x,sin(x));
