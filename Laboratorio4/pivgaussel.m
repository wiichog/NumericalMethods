function [ A, b, x ] = pivgaussel(A,b)
[n,n] = size(A);
[n,k] = size(b);
x = zeros(n, k)
for i=1:n-1
    s = max(abs(A(i:n, i:n)), [], 2); 
    fprintf('Numero mas grande en fila #d \n',s);
    [pivmax, index] = max(abs(A(i:n,i)) ./ s ); 
    fprintf('Index del mayor residuo esta en el indice #d y es valor #d\n',(i-1)+index,pivmax);
    A([i , ((i-1)+index)],:) = A([((i-1)+index) , i],:); 
    b([i , ((i-1)+index)],:) = b([((i-1)+index), i],:); 
    fprintf('Intercambio #d con #d \n',i, i-1+index );
    m = -A(i+1:n,i)/A(i,i); 
    A(i+1:n,:) = A(i+1:n,:)+(m * A(i,:)); 
    b(i+1:n,:) = b(i+1:n,:) + m*b(i,:);
    b
    i
end

x(n,:) = b(n,:)/A(n,n);
for i = n-1:-1:1 
    x(i,:) = (b(i,:) - A(i,i+1:n)*x(i+1:n,:))/A(i,i);
end
end

