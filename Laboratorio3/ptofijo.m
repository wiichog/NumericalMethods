function [ r ] = ptofijo( y )
%esta funci�n, es la implementacion del m�todo de punto fijo
%   autor: Julio Echeverri  

    %se realiza un analisis gr�fico para el usuario antes de ingresar el
    %valor de estimaci�n R
    
low=input('Elija limite inferior para visualizar la grafica: ');  %se ingrea el limite inferior de la grafica
up=input('Elija limite superior para visualizar la grafica: ');  %se ingrea el limite superior de la grafica
t=linspace(low,up,10000);  %se genera un vector de 10000 puntos
h=subs(y,t);  %se valuan todos los puntos del vector tiempo y se almacenan en h
plot(t,h)  %se grafica el vector h con respecto al tiempo
grid on

          %se inicia metodo del punto fijo

syms x        %se establece la variable simbolica x necesaria para implementear el metodo
error=100;   %se inicializa el error en 100%
g=y+x;        %se elabora la funcion g(x) del metodo de punto fijo
r=input('Ingrese el estimado de la raiz: ');
while abs(error)>0.0000000001    %se establece un umbral de error del 1e-10
    aux=r;     %se alamacena el ultimo valor tomado por la variable de raiz, para posteriormente calcula el error aproximado
    r=subs(g,r);   %se halla un nuevo valor en cada iteracion para la variable de raiz r evaluando la funcion g 
    error=((r-aux)/(r))*100; %se calcula el error aproximado
end
r = double(r); %convierte el contenido de 'r' en un valor decimal
end

