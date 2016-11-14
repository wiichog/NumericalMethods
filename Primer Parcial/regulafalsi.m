function [ X ] = regulafalsi(xi,xs,tol,iteracion)
% ingreso de los datos de entrada
fun=input('ingrese la funcion: ','s');
funcion = inline( fun );


yi = funcion(xi); %Valor de la funci�n evaluada en x inferior
ys = funcion(xs); %Valor de la funci�n evaluada en x superior.

tabla(1,1) = xi ;
tabla(1,2) = xs ;

if yi == 0
    
    fprintf('\n\n      En el intevalo (%g) hay una raiz\n',xi)
    
else
             
         if ys == 0
             
            fprintf ('\n\n   En el intervalo (%g) hay una raiz\n',xs)
            
         else
                  
              if yi*ys < 0
                     
                                 xm = xi- ( ( yi*(xs-xi) ) / (ys-yi) );
                                 ym = funcion(xm);
                                 
                                 tabla(1,3) = xm; 
                                  error     = tol + 1;
                                 Contador   = 1;
                                 
      % Condiciones del ciclo repetitivo  para realizar la Regla Falsa                           
                                 
       while ym ~= 0 && error > tol && Contador < iteracion
           
         if yi * ym < 0
             
             xs = xm;
             ys = ym;
             
         else
                 
             xi = xm;
             yi = ym;
             
         endif
         
  % Agregar los datos x medio - x inferior - x superior a la tabla y error
       
           
        tabla(((Contador)+(Contador))/2,3) = xm ;
        tabla(Contador + 1,1) = xi ;
        tabla(Contador + 1,2) = xs ;
        
        aux = xm;
        xm  = xi- ( ( yi*(xs-xi) ) / (ys-yi) );
        ym  = funcion(xm);
         
          error   = abs((xm - aux)/2); % calcular error absoluto
          
        tabla(Contador +1 ,4)     = error ;
         
        tabla((((Contador)+(Contador))/2)+1,3) = xm;
        Contador = Contador + 1;
        
       endwhile
                                 
            % Imprime los datos obtenidos por  algoritmo de Regla Falsa
                
                       if ym == 0
                           
                        fprintf('\n \n  \t   Hay una raiz en (%g)\n',xm)
                          
                       else
                                  
                              if error <= tol
                                  
                                 fprintf('\n \n   \t    (%g) es una raiz con error igual a (%g) en (%g) iteraciones\n',xm,error,Contador)
                                 
                              else
                                        
                                    fprintf('\n \n   \t   Fallo en el numero de iteraciones \n')
                                    
                              endif
                              
                              
                       endif
                       
                      fprintf('\n         X inferior        Y inferior          X medio        Error \n')             
                     disp(tabla)  
                     
              else
                  
                  fprintf('\nEl intervalo no es correcto\n')
                  
              endif
              
              
             
         endif
         
         
                                                             
  
endif


%  Esperar 2 s  y graficar la funcion con malla


