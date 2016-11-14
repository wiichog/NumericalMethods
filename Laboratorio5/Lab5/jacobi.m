function [ xn ] = jacobi( A, b, x0, tol, N )
#Diego Sosa 14375
#Juan Luis Garcia 14189
%   M�todo de Jacobi para encontrar la solucion de una matriz n*n

c = 0; %inicializo mi contador
D = diag(diag(A)); %obtengo la matriz solamente con la diagonal
Dinv = inv(D); %obtengo la inversa de la matriz con las diagonal
U = triu(A)-D; %obtengo el triangulo superior
L = tril(A)-D; %obtengo el triangulo inferior
xn = zeros(size(x0)); %Inicializo xn con ceros
xn1 = ones(size(x0)); %Inicializo xn con ceros

while c<N && norm(xn-xn1)> tol
    xn = D\(b -U*x0 -L*x0); %Aplica la formula recursiva de Jacobi
    xn1 = x0; %obtengo mi x0
    x0 = xn; %cambio mi x0 a xn
    c=c+1; %aumento mi contador
    fprintf('Iteraci�n %d \n', c);
    fprintf('Resultado %d \n', xn);
end

end

