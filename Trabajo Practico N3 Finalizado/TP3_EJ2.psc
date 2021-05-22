//2.Desarrollar un algoritmo que permita saber cuál es el número mayor y menor, sobre un total de 10 números inicializados de forma aleatoria (Rand).
//El algoritmo deberá informar al usuario, los números con los que se realizó el cálculo, el mayor y el menor obtenido.

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