function [ A, b, x ] = ngaussel( A,  b)
%NGAUSSEL Diego Sosa 14735
%Juan Luis Garcia 14189
%   Reducci�n Gaussiana

[n,n] = size(A); %obtenemos el tama�os de la matriz que nos servira para el FOR
[n,k] = size(b); %obtenemos el tama�o del vector que nos servira para crear el vector de soluciones

x = zeros(n, k) %creamos el vector de soluciones
for i=1:n-1
    m = -A(i+1:n,i)/A(i,i); %obtenemos nuestro valor para colocar ceros debajo
    A(i+1:n,:) = A(i+1:n,:)+(m * A(i,:)); %remplazamos las columnas, en teor�a deber�a ser 0
    b(i+1:n,:) = b(i+1:n,:) + m*b(i,:); %remplazamos las columnas de b
end

x(n,:) = b(n,:)/A(n,n);%obtenemos nuestra soluci�n de la posici�n n,n
for i = n-1:-1:1 %resolvemos para atras.
    x(i,:) = (b(i,:) - A(i,i+1:n)*x(i+1:n,:))/A(i,i); %obtenemos nuestras soluciones
end

end

