%Cilindricas

R=10;
E=5;
V=0;
S=R:5:100;
T=0:pi/50:2*pi;
[s,t]= meshgrid(S,T);
V=(-E)*s.*cos(t).*(((R^2)./(s.^2))-1);
x=s.*cos(t);
y=s.*sin(t);
surf(x,y,V)
title('Cilindricas')