//4. Desarrollar un algoritmo que permita generar una contrase�a aleatoria num�rica de 8 d�gitos. Para ello se deber� utilizar
//un arreglo de tama�o 8, que permita almacenar en cada una de sus posiciones los d�gitos obtenidos de forma aleatoria.
//Finalmente se deber� recorrer nuevamente el arreglo para mostrar la contrase�a obtenida. Para mostrar la contrase�a en una instrucci�n
//Escribir, investigar acerca de las funciones concatenar() y convertiratexto().
Algoritmo TP4_EJ3
    Definir NumAleatorio Como Entero
    Definir ContraAzar Como Caracter
    ContraAzar=""
	
    Dimension contrasena[8]
    Para i<-0 Hasta 8-1 Con Paso 1 Hacer
        NumAleatorio=Aleatorio(0,9)
        contrasena[i]=NumAleatorio
        ContraAzar<-Concatenar(ContraAzar,ConvertirATexto(NumAleatorio))
    Fin Para
    escribir "La contrase�a generada al Azar es: ", ContraAzar
FinAlgoritmo

//concatenar(cadena1,cadena2): Devuelve una nueva cadena resulta de unir las cadenas cadena1 y cadena2.
//convertirATexto(numero): Recibe un numero y devuelve una variable cadena de caracteres de dicho real