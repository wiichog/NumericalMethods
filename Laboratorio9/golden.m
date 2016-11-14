#Juan Luis Garcia 14189
function [ X ] = Golden(f,a,b,tau,phi,resphi)

c = a + (b-a) * resphi;
d = b - (b-a) * resphi;
fc = f(c);
fd = f(d);
while abs(b-a) > tau * (abs(c)-abs(d))
    if fc<fd
        b = d
        d = c 
        c = a + (b-a) * resphi
        fd = fc
        fc = eval(f)
    else
        a = c
        c = d
        d = b - (b-a) * resphi
        fc = fd
        fd = eval(f)
resultado = (a+b)/2

end