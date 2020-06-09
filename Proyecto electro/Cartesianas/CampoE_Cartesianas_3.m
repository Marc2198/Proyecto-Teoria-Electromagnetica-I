%Campo electrico Caso 3 - Catesianas
a=10;
b=10;
z=3;
N=5;
[x,y] = meshgrid(0:0.1:a, 0:0.1:b);
for n=1:N
  f=@(x,y) x.*(y.^2).*sin(n*pi*x/a).*sin(n*pi*y/b);
  v=4*integral2(f,0,b,0,a)*exp(-pi*z*sqrt(((n/a).^2)+(n/b).^2))*sin(n*pi*x/a).*sin(n*pi*y/b)/(a*b);
end

[Ex,Ey]=gradient(-v);
quiver(x,y,Ex,Ey);

xlabel('Eje X')
ylabel('Eje Y')
zlabel('Eje Z')
title('CAMPO ELECTRICO - CARTESIANAS CASO 3')
view(47,32)