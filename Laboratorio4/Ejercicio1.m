#Juan Luis Garcia 14095
# Diego Sosa 14375
#Metodos Numericos
#Laboratio Numero 4
#Ejercicio1


Vector1 = [-1,1,0,-3]#Ingresamos el vector1
Vector2 = [-0.13,0.15,-0.18,0.12]#Ingresamos el vector2
#********************* Vector1 *****************************
Norma1Vector1 = norm(Vector1)#Norma1
Norma2Vector1 = norm(Vector1,2)#Norma2
Norma23Vector1 = norm(Vector1,3/2)#Norma2/3
Norma3Vector1 = norm(Vector1,3)#Norma3
NormaInfinitoVector1 = norm(Vector1,inf)#Norma Infinito
#***********************************************************

#********************* Vector2 *****************************
Norma1Vector2 = norm(Vector2)#Norma1
Norma2Vector2 = norm(Vector2,2)#Norma2
Norma23Vector1 = norm(Vector2,3/2)#Norma2/3
Norma3Vector1 = norm(Vector2,3)#Norma3
NormaInfinitoVector2 = norm(Vector2,inf)#Norma Infinito
#***********************************************************


Matriz1 = [-1,2,-1,0,4;1,2,0,3,0;0,-3,1,1,2;1,0,2,-1,3;2,-2,2,-2,1]
Matriz2 = [4,-1,0,0;-1,4,-1,0;0,-1,4,-1;0,0,-1,4]

#********************* Matriz1 *****************************
Norma1Matriz1 = norm(Matriz1)#Norma1
NormaFroMatriz1 = norm(Matriz1,"fro")#Frobenius
NormaInfinitoMatriz1 = norm(Matriz1,inf)#Norma Infinito
#***********************************************************

#********************* Matriz2 *****************************
Norma1Matriz2 = norm(Matriz2)#Norma1
NormaFroMatriz2 = norm(Matriz2,"fro")#Frobenius
NormaInfinitoMatriz2 = norm(Matriz2,inf)#Norma Infinito
#***********************************************************