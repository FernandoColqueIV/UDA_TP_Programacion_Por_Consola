//5.Desarrolle un algoritmo que permita jugar al TA-TE-TI contra la computadora
//COMPILAR EL PROGRAMA DESABILITANDO LA OPCION DE ARREGLOS Y CADENAS EN BASE 0
Algoritmo TP4_EJ5
	Definir TurnoJugador, intento, fila ,columna, ganador Como Entero
	Escribir "=========================="
	Escribir "/////////TA-TE-TI/////////"
	Escribir "=========================="
	ganador<-0
	TurnoJugador<-1
	intento<-1
	Dimension tablero[3,3]
	para i<-1 hasta 3 con paso 1
		para j<-1 hasta 3 con paso 1
			tablero[i,j]<-"   "
		FinPara
	FinPara
	mientras intento <= 6 y ganador == 0 Hacer
		Escribir "------------------------"
		escribir "  Turno Del Jugador ", TurnoJugador 
		Escribir "------------------------"
		Repetir
			Escribir "Indique la Fila (1-3)"
			leer fila 
			si fila>3 o fila <1
				Escribir "introduzca valores entre el 1-3"
			FinSi
		Hasta Que (fila<=3 y fila >=1)
		Repetir
			Escribir "Indique la columna (1-3)"
			leer columna 
			si columna>3 o columna <1
				Escribir "introduzca valores entre el 1-3"
			FinSi
		Hasta Que (columna<=3 y columna >=1)
		si (tablero[fila,columna]= "   ") Entonces
			si(TurnoJugador=1) Entonces
				tablero[fila,columna]<- " x "
				TurnoJugador<-2
			SiNo
				tablero[fila,columna]<-" O "
				TurnoJugador<-1
			FinSi
			intento<-intento+1
		SiNo
			Escribir "^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^"
			Escribir "            la casilla se encuentra ocupada "
			Escribir "     porfavor elija otra que se encuentre disponible"
			Escribir "^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^"
		FinSi
		// este para hace los espacios para el tablero
		para i<-1 hasta 3 con paso 1
			para j<-1 hasta 3 con paso 1
				Escribir tablero[i,j], "," sin saltar
			FinPara
			Escribir ""
		FinPara
		//este si, comprueba si las filas y las columnas cumplen con la condicion, en caso de hacerlo, lo marca como tateti, y de no hacerlo para al siguiente filtro, de no cumplir con ninguna, vuelve a pedir otra columna y fila
		si tablero[fila,1]== tablero[fila,2] y tablero[fila,2]== tablero[fila,3] Entonces
			si TurnoJugador == 1 entonces 
				TurnoJugador<-2
			sino 
				TurnoJugador<-1
			FinSi
			Escribir "el ganador es el jugador ", TurnoJugador
			ganador<-1
		sino 
			si tablero[1,columna] == tablero[2,columna] y tablero[2,columna] == tablero[3,columna] Entonces
				si TurnoJugador== 1 Entonces
					TurnoJugador<-2
				SiNo
					TurnoJugador<-1
					Escribir "el ganador es el jugador " TurnoJugador
					ganador<-1
				FinSi
			FinSi 
			//estos dos si detecta los tateti diagonales tanto de izquierda a derecha como viseversa
			Si tablero[fila,columna] == tablero[1,1] y tablero[fila,columna] == tablero[2,2] y tablero[fila,columna] == tablero[3,3] Entonces
				si TurnoJugador== 1 Entonces
					TurnoJugador<-2
				SiNo
					TurnoJugador<-1
					Escribir "el ganador es el jugador " TurnoJugador
					ganador<-1
				FinSi
			sino 
				Si tablero[fila,columna] == tablero[1,3] y tablero[fila,columna] == tablero[2,2] y tablero[fila,columna] == tablero[3,1] Entonces
					si TurnoJugador== 1 Entonces
						TurnoJugador<-2
					SiNo
						TurnoJugador<-1
						Escribir "el ganador es el jugador " TurnoJugador
						ganador<-1
					FinSi
				fin si
			fin si
		FinSi
	FinMientras
	Escribir "en caso de no haber un ganador, se considerara un empate"
FinAlgoritmo



