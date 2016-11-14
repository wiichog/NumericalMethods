function [ X ] = Secante(x0,x1,e )
#f: Funcion en forma de cadena
#x0,x1: puntos iniciales
#porcentaje de error
f=input('ingrese la funcion: ','s');
f=inline(f);
i = 1;
Ea = e;
z(1) = x0;
z(2) = x1;
while Ea >= e
    X(i,1) = i;
    X(i,2) = z(i);
    if i > 1
        x = z(i);
        fx = eval(f);
        x = z(i-1);
        fy = eval(f);
 
        z(i+1) = z(i)-(((z(i) - z(i-1))/(fx - fy))*fx);
 
        Ea = abs((z(i) - z(i-1))/z(i))*100;
        X(i,3) = Ea;
        if Ea < e
            break;
        end
    else
        X(i,3) = 100;
    end
    i = i + 1;
end
end