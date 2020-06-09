%Cartesianas, Ejercicio 1 - Caso 2

a=1;
b=1;
X=-a:0.02:a;
Y=0:0.02:b;
[x,y]= meshgrid(X,Y);

P=0;
V2=0;
N=2;
for n= 1:N
  f=@(y) (2*y.^3+5).*sin(pi*n*y/b);
  Fn=(2./(b*cosh(n*pi*a/b))).*integral(f,0,b);
  P= Fn.*cosh(pi.*n*x/b).*sin(pi.*n*y/b);
  V2=P+V2;
endfor
subplot(2,2,1)
surf(x,y,V2)
xlabel('Eje X')
ylabel('Eje Y')
zlabel('Potencial')
title('Cartesianas: Caso 2(N=2)')

P=0;
V5=0;
N=5;
for n= 1:N
  f=@(y) (2*y.^3+5).*sin(pi*n*y/b);
  Fn=(2./(b*cosh(n*pi*a/b))).*integral(f,0,b);
  P= Fn.*cosh(pi.*n*x/b).*sin(pi.*n*y/b);
  V5=P+V5;
endfor
subplot(2,2,2)
surf(x,y,V5)
xlabel('Eje X')
ylabel('Eje Y')
zlabel('Potencial')
title('Cartesianas: Caso 2(N=5)')

P=0;
V10=0;
N=10;
for n= 1:N
  f=@(y) (2*y.^3+5).*sin(pi*n*y/b);
  Fn=(2./(b*cosh(n*pi*a/b))).*integral(f,0,b);
  P= Fn.*cosh(pi.*n*x/b).*sin(pi.*n*y/b);
  V10=P+V10;
endfor
subplot(2,2,3)
surf(x,y,V10)
xlabel('Eje X')
ylabel('Eje Y')
zlabel('Potencial')
title('Cartesianas: Caso 2(N=10)')

P=0;
V20=0;
N=20;
for n= 1:N
  f=@(y) (2*y.^3+5).*sin(pi*n*y/b);
  Fn=(2./(b*cosh(n*pi*a/b))).*integral(f,0,b);
  P= Fn.*cosh(pi.*n*x/b).*sin(pi.*n*y/b);
  V20=P+V20;
endfor
subplot(2,2,4)
surf(x,y,V20)
xlabel('Eje X')
ylabel('Eje Y')
zlabel('Potencial')
title('Cartesianas: Caso 2(N=20)')