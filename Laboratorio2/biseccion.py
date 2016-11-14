from math import *
def p(x): return sin(x) - e**(-x)
def g(x): return x + log(x)
def h(x): return x**4 - 8*(x**3) - 35*(x**2) + 450*x - 1001

#*****************************************************
#METODO DE BISECCION PARA EL LOGARITMO
#*****************************************************
def Biseccion1():
    i = 0#para inicio de ciclo
    xu = float(input('Ingrese el extremo inferior del intervalo: '))#Ingresamos datos
    xl = float(input('Ingrese el extremo superior del intervalo: '))#Ingresamos datos
    xc = (xu + xl)/float(2)#promedio de biseccion
    iteraciones = int(input('Ingrese numero de iteraciones: '))#pedimos el numero de iteraciones
    while i <= iteraciones:#iniciamos ciclo
        fu = g(xu)#valuamos la funcion en xu, xl y xc en el polinomio
        fl = g(xl)
        fc = g(xc)
        xc = (xu + xl)/float(2)#promedio de biseccion
        if (fu*fc > 0):
            xu = xc
        elif(fu*fc <0):
            xl = xc
        else:
            xc = xc
        i += 1
    print("La raiz que se estaba buscando era " + str(xc) +"")

#*****************************************************
#METODO DE BISECCION PARA EL POLINOMIO
#*****************************************************
def Biseccion2():
    i = 0#para inicio de ciclo
    xu = float(input('Ingrese el extremo inferior del intervalo: '))#Ingresamos datos
    xl = float(input('Ingrese el extremo superior del intervalo: '))#Ingresamos datos
    xc = (xu + xl)/float(2)#promedio de biseccion
    iteraciones = int(input('Ingrese numero de iteraciones: '))#pedimos el numero de iteraciones
    while i <= iteraciones:#iniciamos ciclo
        fu = h(xu)#valuamos la funcion en xu, xl y xc en el polinomio
        fl = h(xl)
        fc = h(xc)
        xc = (xu + xl)/float(2)#promedio de biseccion
        if (fu*fc > 0):
            xu = xc
        elif(fu*fc <0):
            xl = xc
        else:
            xc = xc
        i += 1
    print("La raiz que se estaba buscando era " + str(xc) +"")

#*****************************************************
#METODO DE FALSA POSICION PARA EL LOGARITMO
#*****************************************************
def FalsaPosicion1():
    xu = float(input('Ingrese el extremo inferior del intervalo: '))#Ingresamos datos
    xl = float(input('Ingrese el extremo superior del intervalo: '))#Ingresamos datos
    fu = g(xu)#valuamos la funcion en xu en el logaritmo
    fl = g(xl)#valuamos la funcion en xl en el logaritmo
    xc = abs(((xu*fl) - (xl*fu))/((fu)-(fl)))#calculamos xc por medio de metodo de falsa posicion
    iteraciones = int(input('Ingrese numero de iteraciones: '))#pedimos el numero de iteraciones
    i = 0
    while i <= iteraciones:
        fu = g(xu)#valuamos la funcion en xu, xl y xc en el logaritmo
        fl = g(xl)
        fc = g(xc)
        xc = abs(((xu*fl) - (xl*fu))/((fu)-(fl)))#calculamos xc por medio de metodo de falsa posicion
        if (fu*fc > 0):
            xu = xc
        elif(fu*fc <0):
            xl = xc
        else:
            xc = xc
        i += 1
    print("La raiz que se estaba buscando era " + str(xc) +"")

#*****************************************************
#METODO DE FALSA POSICION PARA EL POLINOMIO
#*****************************************************
def FalsaPosicion2():
    xu = float(input('Ingrese el extremo inferior del intervalo: '))#Ingresamos datos
    xl = float(input('Ingrese el extremo superior del intervalo: '))#Ingresamos datos
    fu = h(xu)#valuamos la funcion en xu en el polinomio
    fl = h(xl)#valuamos la funcion en xl en el polinomio
    xc = ((xu*fl) - (xl*fu))/float(((fu)-(fl)))#calculamos xc por medio de metodo de falsa posicion
    iteraciones = int(input('Ingrese numero de iteraciones: '))#pedimos el numero de iteraciones
    i = 0#para inicio de ciclo
    while i <= iteraciones:#iniciamos ciclo
        fu = h(xu)#valuamos la funcion en xu, xl y xc en el polinomio
        fl = h(xl)
        fc = h(xc)
        xc = ((xu*fl) - (xl*fu))/((fu)-(fl))#calculamos xc por medio de metodo de falsa posicion
        if (fu*fc > 0):#evaluamos las condiciones
            xl = xc#cambiamos de datos 
        elif(fu*fc <0):
            xu = xc
        else:
            xc = xc
        i += 1#aumentamos el ciclo
    print("La raiz que se estaba buscando era " + str(xc) +"")#presentamos resultados



#*****************************************************
#METODO DE LA SECANTE
#*****************************************************
def Secante():
    xu = float(input('Ingrese el extremo inferior del intervalo: '))#Ingresamos datos
    xl = float(input('Ingrese el extremo superior del intervalo: '))#Ingresamos datos
    tol = float(input('Ingrese tolerancia '))#Ingresamos datos
    fu = p(xu)#valuamos la funcion en xu
    fl = p(xl)#valuamos la funcion en xl
    error = abs(fu-fl)#ponemos un error de 100
    xc = xl - (((xu-xl)/float(fu-fl))*fl)#calculamos por metodo de la secante xc
    i =0
    while error > tol:#iniciamos la iteraciones
        tol = xc #decimos que la tolerancia sea igual a xc
        fu = p(xu) #volvemos a valuar la funcion
        fl = p(xl) 
        fc = p(xc)
        error = abs(fu-fl)#ponemos un error de 100
        xc = xl - (((xu-xl)/(fu-fl))*fl) #volvemos a calcular xc por metodo de la secante
        if (fu*fc > 0): #evaluamos las condiciones
            xu = xc     #cambiamos de datos 
        elif(fu*fc <0): 
            xl = xc
        else:
            xc = xc
        i += 1  #aumentamos en el ciclo
    print("La raiz que se estaba buscando era " + str(xc) +"") #entregamos resultados


#*****************************************************
#METODO DE LA SECANTE 2 LIMITE
#*****************************************************
def Secante2():
    xu = 5
    xl = 7
    tol = 0.00000000001
    fu = p(xu)#valuamos la funcion en xu
    fl = p(xl)#valuamos la funcion en xl
    error = abs(fu-fl)#ponemos un error de 100
    xc = xl - (((xu-xl)/float(fu-fl))*fl)#calculamos por metodo de la secante xc
    i = 0
    while error > tol:#iniciamos la iteraciones
        tol = xc #decimos que la tolerancia sea igual a xc
        fu = p(xu) #volvemos a valuar la funcion
        fl = p(xl) 
        fc = p(xc)
        error = abs(fu-fl)#ponemos un error de 100
        xc = xl - (((xu-xl)/(fu-fl))*fl) #volvemos a calcular xc por metodo de la secante
        if (fu*fc > 0): #evaluamos las condiciones
            xu = xc     #cambiamos de datos 
        elif(fu*fc <0): 
            xl = xc
        else:
            xc = xc
        i += 1  #aumentamos en el ciclo
        limite = (xc)/float( i * 3.14159265359)
        print i
    print("El limite de xn/ npi cuando tiende al infinito es " + str(limite) +"") #entregamos resultados


while True:
    print("Bienvenido")
    print ("1. Biseccion primer ejercicio logaritmos")
    print ("2. Biseccion segundo ejercicio polinomio")
    print ("3. Falsa Posicion primer ejercicio logaritmos")
    print ("4. Falsa Posicion segundo ejercicio polinomio")
    print ("5. Metodo de la Secante")
    print ("6. Metodo de la Secante con limite")
    print ("7. Salir del Programa")
    x = input("elija el numero de la opcion del menu que quiera realizar: ")
    x = int(x)
    if x ==1:
        Biseccion1()
        False
    elif x==2:
        Biseccion2()
        False
    elif x==3:
        FalsaPosicion1()
        False
    elif x==4:
        FalsaPosicion2()
        False
    elif x==5:
        Secante()
        False
    elif x==6:
        Secante2()
        False
    elif x==7:
        True
    else:
        print("mal ingreso intenta nuevamente")
        False
