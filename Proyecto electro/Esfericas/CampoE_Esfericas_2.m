%Campo electrico Esfericas - Caso 2

a=5;
b=5;
V=2;
r=10;
k=5;
q=8.84*10.^-12;

t1=[0:0.1:2*pi];
p1=[0:0.1:pi];
[p,t]=meshgrid(p1,t1)
x=r.*sin(t).*cos(p);
y=r.*sin(t).*sin(p);
%Esfera a
V_inA=V;
V_outA=(V*a/r);
%Esfera b
V_inB=((-k*b)/(3*q)+(4*k*r^2)*((3*cos(t).^2-1)/2)/(15*b*q));
V_outB=((-k*b^2)/(3*r*q)+(4*k*b^4)*((3*cos(t).^2-1)/2)/(15*r.^3*q));
%Grafica
V_1=(r<a).*V_inA+V_inB;
V_2=(a<r<b).*V_outA+V_inB;
V_3=(r>b).*V_outA+V_outB;
VT=V_1+V_2+V_3;
[Ex,Ey]=gradient(VT);
quiver(x,y,Ex,Ey);

xlabel('Eje X')
ylabel('Eje Y')
zlabel('Eje Z')
title('CAMPO ELECTRICO - ESFÉRICAS CASO 2')
view(47,32)