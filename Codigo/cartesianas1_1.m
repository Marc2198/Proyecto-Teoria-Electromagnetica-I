%Cartesianas, Ejercicio 1 - Caso 1

a=1;
b=1;
X=0:0.02:a;
Y=0:0.02:b;
[x,y]= meshgrid(X,Y);

V2=0;
N=2;
for n= 1:N
  f=@(y) atan(y/a).*sin(pi*n*y/b);
  Fn=(2./(b*sinh(n*pi*a/b))).*integral(f,0,b);
  P= Fn.*sinh(pi.*n*x/b).*sin(pi.*n*y/b);
  V2=P+V2;
endfor

subplot(2,2,1)
surf(x,y,V2)
xlabel('Eje X')
ylabel('Eje Y')
zlabel('Potencial')
title('Cartesianas: Caso 1(N=2)')

V5=0;
N=5;
for n= 1:N
  f=@(y) atan(y/a).*sin(pi*n*y/b);
  Fn=(2./(b*sinh(n*pi*a/b))).*integral(f,0,b);
  P= Fn.*sinh(pi.*n*x/b).*sin(pi.*n*y/b);
  V5=P+V5;
endfor

subplot(2,2,2)
surf(x,y,V5)
xlabel('Eje X')
ylabel('Eje Y')
zlabel('Potencial')
title('Cartesianas: Caso 1(N=5)')

V10=0;
N=10;
for n= 1:N
  f=@(y) atan(y/a).*sin(pi*n*y/b);
  Fn=(2./(b*sinh(n*pi*a/b))).*integral(f,0,b);
  P= Fn.*sinh(pi.*n*x/b).*sin(pi.*n*y/b);
  V10=P+V10;
endfor

subplot(2,2,3)
surf(x,y,V10)
xlabel('Eje X')
ylabel('Eje Y')
zlabel('Potencial')
title('Cartesianas: Caso 1(N=10)')

V20=0;
N=20;
for n= 1:N
  f=@(y) atan(y/a).*sin(pi*n*y/b);
  Fn=(2./(b*sinh(n*pi*a/b))).*integral(f,0,b);
  P= Fn.*sinh(pi.*n*x/b).*sin(pi.*n*y/b);
  V20=P+V20;
endfor

subplot(2,2,4)
surf(x,y,V20)
xlabel('Eje X')
ylabel('Eje Y')
zlabel('Potencial')
title('Cartesianas: Caso 1(N=20)')

