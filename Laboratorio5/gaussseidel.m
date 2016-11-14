%Juan Luis Garcia 14189
%Metodos Numericos
% Corto 1
function [xn] = jacobi(A, b, x0, tol, N)
D = diag(diag(A));
U = (triu(A)-D);
L = (tril(A)-D);
xn = zeros(size(x0));
xn1 = ones(size(x0));
for k=1:N
    if norm(xn1-x0)>=tol
        xn = (D+L)\(- U*x0 + b);
        xn1 = x0;
        x0 = xn;
        xn
        
    else
        xn
        break
    end
  k
end
    