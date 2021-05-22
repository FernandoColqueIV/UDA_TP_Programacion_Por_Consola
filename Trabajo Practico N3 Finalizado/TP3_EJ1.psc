//1.Desarrollar un algoritmo que imprima la tabla de multiplicar de los números del uno diez

Algoritmo TP3_EJ2
	Definir resultado, multi Como Entero
	multi=1
	Para i<-1 Hasta 10 Con Paso 1 Hacer
		Escribir "---------------"
		Escribir "Tabla del " i
		Escribir "---------------"
		Para a<-1 Hasta 10 Con Paso 1  Hacer
			resultado = multi * a
			Escribir multi " * " a " = " resultado
		Fin Para
		multi = multi + 1
	Fin Para
	
FinAlgoritmo