///Colque Salinas Enzo Fernando Gabriel 
///Programación2020_TP5_ColqueSalians_EnzoFernandoGabriel
///4.Crear un procedimiento que intercambie los valores de dos variables. Realizar un programa que llame a este procedimiento para que intercambie dos valores leídos desde el teclado y los muestre por pantalla
Algoritmo TP5_EJERCICIO4
	Definir Variable1, Variable2, aux Como Caracter
	
	Escribir "Escriba la variable 1: "Sin Saltar
	leer Variable1
	
	Escribir "Escriba la variable 2: "Sin Saltar
	Leer Variable2
	
	CambiarVariable(Variable1, Variable2, aux)
	
FinAlgoritmo
///------------------------------SubProceso------------------------------///

SubProceso CambiarVariable(Variable1, Variable2, aux)
	aux=Variable1
	Variable1=Variable2
	Variable2=aux
	
	Escribir "Variable 1: " Variable1
	Escribir "Variable 2: " Variable2
FinSubProceso
	