//2.Desarrollar un algoritmo que permita saber cu�l es el n�mero mayor y menor, sobre un total de 10 n�meros inicializados de forma aleatoria (Rand).
//El algoritmo deber� informar al usuario, los n�meros con los que se realiz� el c�lculo, el mayor y el menor obtenido.

Algoritmo TP3_EJ2
	Definir nroA, max, min Como Entero
	max = 1; min = 100
	Escribir "Los 10 numeros aleatorios son: "
	Para i<-1 Hasta 10 Con Paso 1 Hacer
		nroA = azar(100)
		Si nroA > max Entonces
			max = nroA
		FinSi
		Si nroA < min Entonces
			min = nroA
		FinSi
		Escribir nroA		
	Fin Para
	Escribir "-------------------------------"
	Escribir "El numero mayor es: " max
	Escribir "El numero menor es: " min
	Escribir "-------------------------------"
FinAlgoritmo