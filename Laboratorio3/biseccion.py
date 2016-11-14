# -*- coding: cp1252 -*-
from math import *
def biseccion(a, b, tol=1.0e-8):
    i =0
    if a > b:
        raise ValueError("Intervalo mal definido")
    if f(a) * f(b) >= 0.0:
        raise ValueError("La función debe cambiar de signo en el intervalo")
    if tol <= 0:
        raise ValueError("La cota de error debe ser un número positivo")
    x = (a + b) / 2.0
    while True:
        i = i +1
        if b - a < tol:
            return x
        # Utilizamos la función signo para evitar errores de precisión
        elif (f(a) * f(x)) > 0:
            a = x
        else:
            b = x
        x = (a + b) / 2.0
        print "el numero de iteraciones es",  i

def f(x): return e**(-x**2) - cos(2*x) - 1
a = 0
b = 3
biseccion(a, b)
