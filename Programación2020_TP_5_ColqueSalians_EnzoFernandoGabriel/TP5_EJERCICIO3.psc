///Colque Salinas Enzo Fernando Gabriel 
///Programación2020_TP5_ColqueSalians_EnzoFernandoGabriel
///3.Implemente un programa con subprogramas que, leyendo el nombre de tres alumnos y la nota obtenida por cada uno en una asignatura, muestre por pantalla la media de las notas.
Algoritmo TP5_EJERCICIO3
	Definir Notas, Nota_total Como real
	Definir Alumno Como Caracter
	
	Promedios(Nota_total, Notas, Alumno)
	
FinAlgoritmo
///----------------------------------SubProceso----------------------------------/// 
SubProceso Promedios(Nota_total, Notas, Alumno)
	Repetir
		i=i+1
		Escribir "----------------------------------------------------"
		Escribir "escriba el nombre del Alumno " i ": " Sin Saltar
		Leer Alumno
		Escribir "introduzca la nota del Alumno " i ": " Sin Saltar
		leer Notas
		Escribir "----------------------------------------------------"
		
		Nota_total=Nota_total+Notas
	Hasta Que i=3 
	Escribir "La media de las notas es de: " Nota_total/3

FinSubProceso
	