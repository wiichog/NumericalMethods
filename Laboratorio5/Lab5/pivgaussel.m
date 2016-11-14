#Diego Sosa 14375
#Juan Luis Garcia 14189
function [ A, b, x ] = pivgaussel( A, b )
%   Reducci�n Gaussiana con pivoteo parcial escalonado

[n,n] = size(A); %obtenemos el tama�os de la matriz que nos servira para el FOR
[n,k] = size(b); %obtenemos el tama�o del vector que nos servira para crear el vector de soluciones

x = zeros(n, k) %creamos el vector de soluciones

for i=1:n-1
    %fprintf('Iteracion %d \t',i);
    s = max(abs(A(i:n, i:n)), [], 2); %obtenemos de cada fila el maximo
    fprintf('N�mero mas grande en fila %d \n',s);
    [pivmax, index] = max(abs(A(i:n,i)) ./ s ); %dividimos cada uno de los resultados por la primera columna
    fprintf('Index del mayor residuo esta en el indice %d y es valor %d\n',(i-1)+index,pivmax);
    %de nuestra sub-matriz
    A([i , ((i-1)+index)],:) = A([((i-1)+index) , i],:); %intercambiamos la fila con el residuo mayor por la primera columna
    b([i , ((i-1)+index)],:) = b([((i-1)+index), i],:); %intercambiamos la fila con el residuo mayor por la primera columna
    fprintf('Intercambio %d con %d \n',i, i-1+index );
    m = -A(i+1:n,i)/A(i,i); %obtenemos nuestro valor para colocar ceros debajo
    A(i+1:n,:) = A(i+1:n,:)+(m * A(i,:)); %remplazamos las columnas, en teor�a deber�a ser 0
    b(i+1:n,:) = b(i+1:n,:) + m*b(i,:); %remplazamos las columnas de b
end

x(n,:) = b(n,:)/A(n,n);%obtenemos nuestra soluci�n de la posici�n n,n
for i = n-1:-1:1 %resolvemos para atras.
    x(i,:) = (b(i,:) - A(i,i+1:n)*x(i+1:n,:))/A(i,i); %obtenemos nuestras soluciones
end

end

