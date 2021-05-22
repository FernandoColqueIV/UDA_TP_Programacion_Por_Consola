Algoritmo Tipos_de_Bombas_con_si
	//2. Reescribe el programa anterior usando condicionales SI (es decir, en lugar de según nos basaremos exclusivamente en SI).
	Escribir "escriba un numero del 1 al 4 segun el tipo de bomba requerida"
		leer bomba 
		si bomba=0 Entonces
			Escribir "No hay establecido un valor definido para el tipo de bomba"
		SiNo
			si bomba =1 Entonces Escribir "La bomba es una bomba de agua"
			sino si bomba =2 Entonces Escribir "La bomba es una bomba de gasolina"
				SiNo si bomba =3 Entonces Escribir "La bomba es una bomba de hormigón"
					sino si bomba =4 Entonces Escribir "La bomba es una bomba de pasta alimenticia"
						SiNo
							Escribir "No existe un valor válido para tipo de bomba"
						FinSi
					FinSi
				FinSi
			FinSi
		FinSi
FinAlgoritmo
