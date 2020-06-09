%Cartesianas, Ejercicio 1 - Caso 2

a=1;
b=1;
X=-a:0.02:a;
Y=0:0.02:b;
[x,y]= meshgrid(X,Y);

V2=0;
N=2;
for n= 1:N
  f=@(y) (2*y.^3+5).*sin(pi*n*y/b);
  Fn=(2./(b*cosh(n*pi*a/b))).*integral(f,0,b);
  P= Fn.*cosh(pi.*n*x/b).*sin(pi.*n*y/b);
  V2=P+V2;
  [E2x,E2y]=gradient(-V2);
endfor
subplot(2,2,1)
quiver(x,y,E2x,E2y)
xlabel('Eje X')
ylabel('Eje Y')
title('Campo Electrico: Caso 2(N=2)')

V5=0;
N=5;
for n= 1:N
  f=@(y) (2*y.^3+5).*sin(pi*n*y/b);
  Fn=(2./(b*cosh(n*pi*a/b))).*integral(f,0,b);
  P= Fn.*cosh(pi.*n*x/b).*sin(pi.*n*y/b);
  V5=P+V5;
  [E5x,E5y]=gradient(-V5);
endfor
subplot(2,2,2)
quiver(x,y,E5x,E5y)
xlabel('Eje X')
ylabel('Eje Y')
title('Campo Electrico: Caso 2(N=5)')

V10=0;
N=10;
for n= 1:N
  f=@(y) (2*y.^3+5).*sin(pi*n*y/b);
  Fn=(2./(b*cosh(n*pi*a/b))).*integral(f,0,b);
  P= Fn.*cosh(pi.*n*x/b).*sin(pi.*n*y/b);
  V10=P+V10;
  [E10x,E10y]=gradient(-V10);
endfor
subplot(2,2,3)
quiver(x,y,E10x,E10y)
xlabel('Eje X')
ylabel('Eje Y')
title('Campo Electrico: Caso 2(N=10)')

V20=0;
N=20;
for n= 1:N
  f=@(y) (2*y.^3+5).*sin(pi*n*y/b);
  Fn=(2./(b*cosh(n*pi*a/b))).*integral(f,0,b);
  P= Fn.*cosh(pi.*n*x/b).*sin(pi.*n*y/b);
  V20=P+V20;
  [E20x,E20y]=gradient(-V20);
endfor
subplot(2,2,4)
quiver(x,y,E20x,E20y)
xlabel('Eje X')
ylabel('Eje Y')
title('Campo Electrico: Caso 2(N=20)')