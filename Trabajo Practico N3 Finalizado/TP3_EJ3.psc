//3. Desarrollar un algoritmo que permita calcular la suma de los primeros cien n�meros. Agregar un men� con tres opciones:
	//a. Opci�n 1: Calcular utilizando la estructura PARA
	//b. Opci�n 2: Calcular utilizando la estructura MIENTRA
	//c. Opci�n 3: Calcular utilizando la estructura REPETIR
	//d. Detectar si el usuario ingresa una opci�n incorrecta, informar al usuario si desea salir o continuar con la ejecuci�n del programa
		//Informar al usuario:
			//- La opci�n seleccionada.
			//- La sumatoria de los n�meros.
			//- Consultar si desea continuar o finalizar el ejercici


Algoritmo TP3_EJ3
	Definir suma, Opcions, a, b Como Entero
	a = 0; b = 1
	Repetir
		Escribir "Elejir el Tipo de Estrucutra: "
		Escribir "1 - Estructura PARA"
		Escribir "2 - Estructura MIENTRAS"
		Escribir "3 - Estructura REPETIR"
		Escribir "4 - SALIR"
		Leer Opcions
		Segun Opcions Hacer
			1:
				Escribir "Selecciono estructura PARA."	
				Para i = 1 Hasta 100 Con Paso 1 Hacer
					sumaA = sumaA + i
				Fin Para
				Escribir "----------------------------------------"
				Escribir "suma de los 100 Numeros es de: " sumaA
				Escribir "----------------------------------------"
				sumaA = 0
			2:
				Escribir "Selecciono estructura MIENTRAS."
				Mientras a < 100 Hacer
					a = a + 1
					sumaA = sumaA + a
				Fin Mientras
				Escribir "----------------------------------------"
				Escribir "suma de los 100 Numeros es de: " sumaA
				Escribir "----------------------------------------"
				sumaA = 0
			3:
				Escribir "Se selecciono estructura REPETIR."
				Repetir
					sumaA = sumaA + b
					b = b + 1
				Hasta Que b > 100
				Escribir "----------------------------------------"
				Escribir "sumade los 100 Numeros es de: " sumaA
				Escribir "----------------------------------------"
				sumaA = 0
			4:
				Escribir "Saliendo del programa."
			De Otro Modo:
				Escribir "Opcion no reconocida."
		Fin Segun
	Hasta Que Opcions == 4
FinAlgoritmo