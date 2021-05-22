Algoritmo Tipos_de_Bombas
		//1. Crea un programa donde se solicite al usuario que introduzca el tipo de bomba para una máquina, pudiendo introducir valores enteros comprendidos entre 0 y 4. Según el valor introducido por el usuario debe mostrarse el siguiente resultado usando un condicional según:
		//a) Si el tipo de bomba es 0, mostrar un mensaje por consola indicando “No hay establecido un valor definido para el tipo de bomba”.
		//b) Si el tipo de bomba es 1, mostrar un mensaje por consola indicando “La bomba es una bomba de agua”.
		//c) Si el tipo de bomba es 2, mostrar un mensaje por consola indicando “La bomba es una bomba de gasolina”.
		//d) Si el tipo de bomba es 3, mostrar un mensaje por consola indicando “La bomba es una bomba de hormigón”.
		//e) Si el tipo de bomba es 4, mostrar un mensaje por consola indicando “La bomba es una bomba de pasta alimenticia”.
		//f) Si no se cumple ninguno de los valores anteriores mostrar el mensaje “No existe un valor válido para tipo de bomba”.
	Escribir "escriba un numero del 1 al 4 segun el tipo de bomba requerida"
	leer bomba
	segun bomba hacer
		0: escribir "No hay establecido un valor definido para el tipo de bomba"
		1: escribir "La bomba es una bomba de agua"
		2: escribir "La bomba es una bomba de gasoliana"
		3: escribir "La bomba es una bomba de hormigon"
		4: escribir "la bomba es una bomba de pasta alimenticia"
		De Otro Modo Escribir "No existe un valor válido para tipo de bomba"	
	FinSegun
FinAlgoritmo

//al principio lo hice de esta manera, pero la consigna del punto 2 pedia usar unicamente "si"
//y me quedaba la duda si en el punto 1 debia usar unicamente "segun", por eso lo hice unicamente con "segun"
//por las dudas dejo el codigo por si tambien sirve para el punto 1 donde uso "si" y "segun" juntos


//Algoritmo 
//Escribir "escriba un numero del 1 al 4 segun el tipo de bomba requerida"
//leer bomba
//si bomba < 5 Entonces
//	segun bomba hacer
//		0: escribir "No hay establecido un valor definido para el tipo de bomba"
//		1: escribir "La bomba es una bomba de agua"
//		2: escribir "La bomba es una bomba de gasoliana"
//		3: escribir "La bomba es una bomba de hormigon"
//		4: escribir "la bomba es una bomba de pasta alimenticia"
//	FinSegun
//SiNo
//	Escribir "No existe un valor válido para tipo de bomba"	
//FinSI
//FinAlgoritmo

