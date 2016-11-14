function [ raiz,i ]=biseccion(a,b,tol)
# a: Extremo inferior del intervalo inicial
# b: Extremo superior del intervalo inicial
# tol: tolerancia; si |b-a|<tol el algoritmo se detiene
fun=input('ingrese la funcion: ','s');
fun=inline(fun);
if a>b # Se comprueba que a<b
aa=a; # Si b>a se permutan sus valores.
a=b;
b=aa;
end #if
xm=(a+b)/2;
  if fun ( a ) *fun ( b )>0 # Comprueba que el signo difiere3^
  # en los extremos del intervalo
  disp ( "ERROR:Debe introducir otro intervalo ")
  elseif abs(b-a)<tol;
  raiz=xm ;
  else
  i = 0
while ( ( fun ( xm ) ~=0)&& abs (b-a )>tol )
  i = i+1
  if fun ( xm ) *fun ( b )<0
     a=xm ;
  else
      b=xm ;
  end # if
      xm=(a+b ) / 2 ;
  end # while
      raiz=xm ;
  end # if
      raiz ;
  end # function
