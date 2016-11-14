function newton
    f=input('ingrese la funcion: ','s');
    f=inline(f);
    fp=input('ingrese la dervidad de la funcion: ','s');
    fp=inline(fp);
    xi=input('escriba el punto de inicio: ');   
    tol=input('Ingrese el error maximo admisible: ');
    n=input('Ingrese el numero maximo de iteraciones permitidas: ');
    fx=f(xi);
    fpx=fp(xi);    
    i=1;
    error=tol+1;
    fprintf('\n n         x        f(x)         fp(x)          \n')
    while  i<=n && fx~=0 && error>tol && fpx~=0
        x=xi-(fx/fpx);
        fx=f(x);
        fpx=fp(x);
        fprintf('%1.0f %10.10f %10.10f %10.10f \n',i,x,f(x),fp(x))
        error=abs(x-xi);
        xi=x;
        i=i+1;
    end
    
if fx==0
    fprintf('\n La raíz es: %1.10f \n\n',xi)
  else if error<tol
        fprintf('\n %1.10f es una aproximacion a la raiz con un error maximo de %1.10f \n',xi,tol)
      else if fpx==0
           fprintf(' %1.10 es una posible raiz multiple.',xi)   
          else
           fprintf('\n El metodo fallo en %0.0f iteraciones \n\n',n)  
          end
      end
end
end