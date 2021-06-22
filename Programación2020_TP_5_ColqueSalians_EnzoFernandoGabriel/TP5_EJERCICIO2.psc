///Colque Salinas Enzo Fernando Gabriel 
///Programación2020_TP5_ColqueSalians_EnzoFernandoGabriel
///2.Escribe un procedimiento que escriba en pantalla los n primeros números primos. El procedimiento recibe n como parámetro.
Algoritmo TP5_EJERCICIO2
	Definir n, x, contador, num Como Entero
	Escribir "Escriba un numero: "Sin Saltar
	leer n
	
	Determinar_primeros_Num_Primos(n, aux, i, num)
	
FinAlgoritmo
///------------------------Procedimiento------------------------///

SubProceso Determinar_primeros_Num_Primos(n, aux, i, num)
	Escribir "los primeros " n " numeros primos son: "
	Mientras n>0 Hacer
		num=num+1
		x=1
		contador = 0
		Mientras x<= num Hacer
			si num mod x== 0 Entonces
				contador=contador+1
			FinSi
			x=x+1
		FinMientras
		
		si contador==2 Entonces
			Escribir num " "Sin Saltar
			n=n-1
		FinSi
	FinMientras
	Escribir ""
FinSubProceso
	