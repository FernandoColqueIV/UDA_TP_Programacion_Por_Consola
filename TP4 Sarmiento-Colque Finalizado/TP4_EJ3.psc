//3_Desarrollar un algoritmo que permita obtener los n�meros primos del rango de valores del 1 al 100. Cuando encuentre un n�mero primo, lo
//deber� almacenar en un arreglo. Finalmente se deber� recorrer el arreglo, mostrar los n�meros primos encontrados y en qu� posici�n del arreglo se encuentra.
//Como ayuda se adjunta este algoritmo que se encarga de determinar si un n�mero ingresado por el usuario es primo o no.
Algoritmo TP4_EJ3
	Definir num, NumeroQueSeSuma1, NumeroQueSeSuma2 Como Entero
	Dimension NumPrimo[100]
	NumeroQueSeSuma1=0; 
	
	Para num<-1 hasta 100 con paso 1 hacer
		Para i<-1 hasta num con paso 1 Hacer
			si (num%i==0) 
				NumeroQueSeSuma2=NumeroQueSeSuma2+1
			FinSi
		FinPara
		si NumeroQueSeSuma2==2
			NumeroQueSeSuma1=NumeroQueSeSuma1+1
			NumPrimo(NumeroQueSeSuma1)=num
		FinSi
		NumeroQueSeSuma2=0
	FinPara
	
	Para j<-1 hasta 25 Hacer
		Escribir "En el indice ",j, " se encuentra el valor (numero primo): ",NumPrimo(j)
	FinPara
FinAlgoritmo
