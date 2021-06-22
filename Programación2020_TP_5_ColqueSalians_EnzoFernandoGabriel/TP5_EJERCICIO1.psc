///Colque Salinas Enzo Fernando Gabriel 
///Programación2020_TP5_ColqueSalians_EnzoFernandoGabriel
///1.Crear un subprograma que reciba como entrada un valor entero e indique si se trata de un número par o impar. ¿Qué tipo de subprograma crees más apropiado, procedimiento o función? Escribe también un programa principal para probar el subprograma.
Algoritmo TP5_EJERCICIO1
	Definir Num Como Entero
	
	Escribir "Dijite un numero entero" Sin Saltar
	Leer Num
	
	Determinar_Par_impar(Num)
	
FinAlgoritmo

///---------------------SubProgramas---------------------///

SubProceso Determinar_Par_impar (Num)
	si Num mod 2 = 0 Entonces
		Escribir "el numero es par"
		
	SiNo
		Escribir "el numero es impar"
		
	FinSi
FinSubProceso

///----Considero que es mejor un SubProceso debido a que se realiza una operacion con mod
/// y devuelve un texto en funcion al resto para determinar si es o no par
