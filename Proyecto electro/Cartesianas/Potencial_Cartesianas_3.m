%Campo electrico Caso 3 - Catesianas
a=20;
b=20;
z=1;
N=5;
[x,y] = meshgrid(0:0.1:a, 0:0.1:b);
for n=1:N
  f=@(x,y) x.*(y.^2).*sin(n*pi*x/a).*sin(n*pi*y/b);
  v=4*integral2(f,0,b,0,a)*exp(-pi*z*sqrt(((n/a).^2)+(n/b).^2))*sin(n*pi*x/a).*sin(n*pi*y/b)/(a*b);
end

mesh(x,y,v)
xlabel('Eje X')
ylabel('Eje Y')
zlabel('Eje Z')
title('POTENCIAL - CARTESIANAS CASO 3')
view(47,32)