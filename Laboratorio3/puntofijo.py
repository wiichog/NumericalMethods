#**********************************************************************
#Juan Luis Garcia
#Carnet 14189
#Universidad del valle de Guatemala
#**********************************************************************
from math import *#importamos math
#definimos funciones
def f(x): return (x**5 - float(0.25))
def g(x): return sqrt((3*x) -1)
def h(x): return (2- (e**x) + (x**2))/float(3)



raiz = 0#ponemos la primera raiz
tolerancia = input("Ingrese nivel de tolerancia ")#pedimos tolerancia
error =abs(f(raiz)-raiz)#calculamos error
i=0#para ciclo
while error > tolerancia:#iniciamos ciclo de tolerancia
    error =abs(f(raiz)-raiz)#calculamos el error
    raiz = f(raiz)#calculamos la raiz
    i = i +1#aumentamos el ciclo
print("El punto fijo para el polinimo x^5 -0.25 es "+ str(raiz) +" despues de "+ str(i) +" iteraciones")#imprimimos datos

raiz = 2#ponemos la primera raiz
error =abs(g(raiz)-raiz)#calculamos error
i=0
while error > tolerancia:
    error =abs(g(raiz)-raiz)#calculamos error
    raiz = g(raiz)#calculamos la raiz
    i = i +1#aumentamos el ciclo
print("El punto fijo para sqrt(3x-1) es "+ str(raiz) +" despues de "+ str(i) +" iteraciones")#imprimimos datos
.
raiz = 1#ponemos la primera raiz
error =abs(h(raiz)-raiz)#calculamos error
i=0
while error > tolerancia:
    error =abs(h(raiz)-raiz)#calculamos error
    raiz = h(raiz)#calculamos la raiz
    i = i +1#aumentamos el ciclo
print("El punto fijo para 2 + e^x +x^2/3 es "+ str(raiz) +" despues de "+ str(i) +" iteraciones")#imprimimos datos
