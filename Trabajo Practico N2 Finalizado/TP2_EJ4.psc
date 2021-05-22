Algoritmo Conversion_de_Dinero
//4. Hacer un programa que realice conversiones entre monedas (buscar conversiones en Internet).  Utilizar un menú como el que sigue:
//1. Pesos argentinos a dólar. 
//2. Pesos argentinas a Peso chileno. 
//3. Pesos argentinos a Libras esterlinas. 
//4. Pesos argentinos a Sol Peruano. 
//5. Pesos argentinos a Yuan. 
//6. Salir
Escribir "coloque en numero segun la conversion a la moneda que desea realizar"
definir PesoARG Como Real
Escribir "1. Pesos argentinos a dólar "
definir dólar Como Real
Escribir "2. Pesos argentinas a Peso chileno"
definir PesoChileno como real
Escribir "3. Pesos argentinos a Libras esterlinas"
definir LibrasEsterlinas como Real
Escribir "4. Pesos argentinos a Sol Peruano"
definir SolPeruano Como Real
Escribir "5. Pesos argentinos a Yuan."
definir Yuan Como Real
Escribir "6. Salir"


leer TipiDeCambio
segun TipiDeCambio hacer
	1: escribir "escriba el monto que quiera pasar a dólar" 
		leer PesoARG 
		dolar= PesoARG * 0.011
		escribir PesoARG " pesos son " dolar " dolares, no se contembla ningun impuesto solidario"
	2: escribir "escriba el monto que quiera pasar a Peso Chileno" 
		leer PesoARG
		PesoChileno= PesoARG * 7.89
		Escribir PesoARG " pesos son " PesoChileno " pesos Chilenos, no se contempla ningun tipo de impuesto solidario" 
	3: escribir "escriba el monto que quiera pasar a Libras esterlinas" 
		leer PesoARG
		LibrasEsterlinas= PesoARG*0.0079
		escribir PesoARG " pesos son " LibrasEsterlinas " Libras esterlinas, no se contempla ningun tipo de impuesto solidario"
	4: escribir "escriba el monto que quiera pasar a Sol Peruano" 
		leer PesoARG
		SolPeruano=PesoARG*0.041 
		Escribir PesoARG " pesos son " SolPeruano " soles peruanos, no se contempla ningun tipo de impuesto solidario"
	5: escribir "escriba el monto que quiera pasar a Yuan" 
		leer PesoARG
		Yuan=PesoARG*0.072 
		Escribir PesoARG " pesos son " Yuan " Yuanes, no se contempla ningun tipo de impuesto solidario"
	6: escribir "Operacion finalizada"
	De Otro Modo:
		Escribir "coloque valores dentro de los parametros establecidos"
FinSegun	
FinAlgoritmo
