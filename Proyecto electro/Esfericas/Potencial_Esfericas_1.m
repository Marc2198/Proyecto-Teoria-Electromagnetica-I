%Potencial Coordenadas Esfericas - Caso 1
R=10;
r=5;
q=8.84*10.^-12;
t1=[0:0.1:2*pi];
p1=[0:0.1:pi];
[p,t]=meshgrid(p1,t1)
x=R.*sin(t).*cos(p);
y=R.*sin(t).*sin(p);
%Caso 1 (in)
%v=(3*r*cos(t)/10*q)-(12*r.^3)*((5*cos(t).^3)-3*cos(t))/70*q*R.^2;
%Caso 1 (out)
v=(3*(R.^3)*cos(t)/10*q*r.^2)-(12*R.^5)*((5*cos(t).^3)-3*cos(t))/70*q*r.^4;

mesh(x,y,v)
xlabel('Eje X')
ylabel('Eje Y')
zlabel('Eje Z')
title('POTENCIAL - ESFÉRICAS CASO 1 - Vout')
view(47,32)