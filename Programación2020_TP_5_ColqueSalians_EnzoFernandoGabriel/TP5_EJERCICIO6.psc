///Colque Salinas Enzo Fernando Gabriel 
///Programaci�n2020_TP5_ColqueSalians_EnzoFernandoGabriel
///6.Escribe una funci�n que reciba un n�mero como par�metro y devuelva el n�mero que se obtiene al invertir el orden de los d�gitos del n�mero original. Por ejemplo, si la funci�n recibe el n�mero 356 devolver� el n�mero 653.
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
	