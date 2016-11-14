function [ k ] = k(A) 
%Diego Sosa 14735
%Juan Luis Garcia 14189
%K conditional number
%   kappa  = ||A| * ||A'||

k = norm(A)*norm(inv(A)); % multiplicacion de la norma de la matriz y la norma de la matriz inversa

end