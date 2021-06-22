///Colque Salinas Enzo Fernando Gabriel 
///Programación2020_TP5_ColqueSalians_EnzoFernandoGabriel
///6.Escribe una función que reciba un número como parámetro y devuelva el número que se obtiene al invertir el orden de los dígitos del número original. Por ejemplo, si la función recibe el número 356 devolverá el número 653.
Algoritmo TP5_EJERCICIO6
	Definir num, i, aux Como Entero
	Escribir "Dijite un numeromque sera invertido" Sin Saltar
	Leer num
	
	invertir_numero(num,aux,i)
	
FinAlgoritmo
///-------------------------SubProceso-------------------------///
SubProceso invertir_numero(num,aux,i)
	i=0
	Mientras num<>0 Hacer
		aux=num mod 10;
		i=(i * 10) + aux
		num=trunc(num/10)
		
	FinMientras	
	Escribir "Nuemro invertido: " i
FinSubProceso
	