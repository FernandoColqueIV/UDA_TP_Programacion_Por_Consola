///Colque Salinas Enzo Fernando Gabriel 
///Programaci�n2020_TP5_ColqueSalians_EnzoFernandoGabriel
///5.Escribe una funci�n llamada media2 que reciba dos reales y devuelva el real que representa el promedio de ambos n�meros. Escribe luego un programa utilizando la funci�n anterior que lea dos reales por teclado y devuelva la media aritm�tica de ambos.
Algoritmo TP5_EJERCICIO5
	
	Definir Num1, Num2, promedio Como Real
	
	media2(Num1, Num2, promedio )
	
FinAlgoritmo
///----------------------------SubProceso----------------------------///
Funcion media2 (Num1, Num2, promedio )
	
	Escribir "Escriba 2 Numeros reales: "
	Escribir "Numero 1: "Sin Saltar
	Leer Num1
	Escribir "Numero 2: "Sin Saltar
	leer Num2
	
	promedio=(Num1+Num2)/2	
	
	Escribir "el promedio es de: " promedio
	
Fin Funcion
