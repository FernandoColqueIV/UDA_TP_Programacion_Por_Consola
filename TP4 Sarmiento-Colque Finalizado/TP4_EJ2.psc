//2. Desarrollar un algoritmo que llene un arreglo con 20 números de forma aleatoria entre 0 y 100 . Luego busque en el arreglo, un número generado
//de forma aleatoria entre 0 y 100, y finalmente muestre: a)- El número a buscar, b)- El arreglo, c)- Si encontró el número, la posición donde fue
//hallado, o d)- Si no encontró el número.
Algoritmo numero_azar
	
	Definir num_azar,x,cont,tamanio_arreglo Como Entero
	num_azar <- azar(100);
	tamanio_arreglo<-20
	Dimension nums_azar[tamanio_arreglo], posicion[tamanio_arreglo];
	
	Para i<-0 Hasta tamanio_arreglo-1 Con Paso 1 Hacer //genera los numeros aleatorios
		nums_azar[i] <- azar(100);
		Escribir nums_azar[i];
		posicion[i] <-i; //inicializacion del arreglo que guarda las posiciones
	Fin Para
	
	Para i<-0 Hasta tamanio_arreglo-1 Con Paso 1 Hacer //compara los numeros aleatorios
		Si nums_azar[i]==num_azar Entonces
			cont<-cont+1;
			x<-posicion[i];
		Fin Si
	Fin Para
	//salida
	Escribir "El numero a buscar es: ", num_azar;
	
	Si cont>0 Entonces
		Escribir "El numero ",num_azar," fue encontrado en la posicion ",x;
	SiNo
		Escribir "El numero no fue encontrado";
	Fin Si
	
FinAlgoritmo