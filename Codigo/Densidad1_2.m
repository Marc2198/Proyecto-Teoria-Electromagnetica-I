%Cartesianas, Ejercicio 1 - Caso 1

a=1;
b=1;
X=-a:0.02:a;
Y=0:0.02:b;
Eo=8.8541878176*(10^(-12));
Dif=0;
[x,y]= meshgrid(X,Y);

V2=0;
N=2;
for n= 1:N
  f=@(y) (2*y.^3+5).*sin(pi*n*y/b);
  Fn=(2./(b*cosh(n*pi*a/b))).*integral(f,0,b);
  P= Fn.*cosh(pi.*n*x/b).*sin(pi.*n*y/b);
  V2=P+V2;
  Dif=diff(V2,n);
  D=-Eo*Dif;
endfor

subplot(2,2,1)
plot(y,D)
xlabel('Eje X')
ylabel('Eje Y')
title('Densidad superficial: Caso 2(N=2)')

V5=0;
N=5;
for n= 1:N
  f=@(y) (2*y.^3+5).*sin(pi*n*y/b);
  Fn=(2./(b*cosh(n*pi*a/b))).*integral(f,0,b);
  P= Fn.*cosh(pi.*n*x/b).*sin(pi.*n*y/b);
  V5=P+V5;
  Dif5=diff(V5,n);
  D5=-Eo*Dif5;
endfor

subplot(2,2,2)
plot(y,D5)
xlabel('Eje X')
ylabel('Eje Y')
title('Densidad superficial: Caso 2(N=5)')

V10=0;
N=10;
for n= 1:N
  f=@(y) (2*y.^3+5).*sin(pi*n*y/b);
  Fn=(2./(b*cosh(n*pi*a/b))).*integral(f,0,b);
  P= Fn.*cosh(pi.*n*x/b).*sin(pi.*n*y/b);
  V10=P+V10;
  Dif10=diff(V10,n);
  D10=-Eo*Dif10;
endfor

subplot(2,2,3)
plot(y,D10)
xlabel('Eje X')
ylabel('Eje Y')
title('Densidad superficial: Caso 2(N=10)')

V20=0;
N=20;
for n= 1:N
  f=@(y) (2*y.^3+5).*sin(pi*n*y/b);
  Fn=(2./(b*cosh(n*pi*a/b))).*integral(f,0,b);
  P= Fn.*cosh(pi.*n*x/b).*sin(pi.*n*y/b);
  V20=P+V20;
  Dif20=diff(V20,n);
  D20=-Eo*Dif20;
endfor

subplot(2,2,4)
plot(y,D20)
xlabel('Eje X')
ylabel('Eje Y')
title('Densidad superficial: Caso 2(N=20)')