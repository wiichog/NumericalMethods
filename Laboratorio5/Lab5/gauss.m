function [ xn ] = gauss( A, b, x0, tol, N )
#Diego Sosa 14375
#Juan Luis Garcia 14189
%   M�todo de Gauss Seidel para encontrar la solucion de una matriz n*n

c = 0; %inicializo mi contador
D = diag(diag(A)); %obtengo la matriz solamente con la diagonal
U = triu(A)-D; %obtengo el triangulo superior
L = tril(A); %obtengo el triangulo inferior con la diagonal
%Linv = inv(L);
xn = zeros(size(x0)); %Inicializo xn con ceros
xn1 = ones(size(x0)); %Inicializo xn con ceros

while c<N && norm(xn-xn1)> tol
    xn = L\(b -U*x0); %Aplica la formula recursiva de Gauss-Seidel
    xn1 = x0; %obtengo mi x0
    x0 = xn; %cambio mi x0 a xn
    c=c+1; %aumento mi contador
    fprintf('Iteraci�n %d \n', c);
    fprintf('Resultado %d \n', xn);
end

end

