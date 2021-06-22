//Parcial Nro2 Juego
//Integrantes: Enzo Fernado Gabriel Colque Salinas
//             Daniel Rodrigez
//Juego: Snake

#include<iostream>
#include<windows.h>
#include<conio.h>
#include<stdlib.h> //usar arreglos
#include<time.h>

using namespace std;

#define ARRIBA 72
#define IZQUIERDA 75
#define ABAJO 80
#define DERECHA 77
#define ESC 27

char tecla;
int Cuerpo_Serpiente[1000][3]; //Tamaño de la Serpiente
int Aux=1;
int Tamano_Inicial_De_Serpiente = 5;
int Direccion_Tecla=3;
int x=10, y=12;
int xComida=30, yComida=20;
int Puntos=0;
int Elejir_Dificultad;
int Dificultad_Velocida;
double tiempo;
//-------------------------------------void-------------------------------------//
//-----------------------------------Interfaz-----------------------------------//
void Interfaz(){
cout<<"        $$$$.."<<endl;
cout<<"      $$$$$$$$$"<<endl;
cout<<"      $$$$$$$_$  	Por cuestiones de seguridad (Presupuesto)se decidio"<<endl;
cout<<"     $$$$$$$$$$ 	Rempazar a la serpiente por un caballito de mar"<<endl;
cout<<"      $$$$$$$$$$"<<endl;
cout<<"     $$$$$$ $$$$$"<<endl;
cout<<"    $$$$$$$     $$$"<<endl;
cout<<"    $$$$$$$$     $"<<endl;
cout<<"    $$$$$$$$$$"<<endl;
cout<<"     $$$$$$$$$$"<<endl;
cout<<"     $$$$$$$$$$$"<<endl;
cout<<"==============================================="<<endl;
cout<<"--------------BIENVENDIO AL SNAKE--------------"<<endl;
cout<<"--Se pondra a prueba tus refeljos y paciencia--"<<endl;
cout<<"==============================================="<<endl;
cout<<"  $$$$$$$$$$$$$"<<endl;
cout<<"$$$$$$$$$$$$$"<<endl;
cout<<"  $  $$$$$$"<<endl;
cout<<"    $$$$$$"<<endl;
cout<<"    $$$$$"<<endl;
cout<<"   $$$$$$     $"<<endl;
cout<<"   $$$$$$   $$ $$"<<endl;
cout<<"    $$$$$   $  $$"<<endl;
cout<<"    $$$$$      $$"<<endl;
cout<<"     $$$$$    $$$"<<endl;
cout<<"       $$$$$$$$$"<<endl;
cout<<"          $$$$"<<endl;		
}
//-------------------Detederminar una Posicion en la consola--------------------//
void gotoxy(int x,int y){ 
//(ancho=x alto=y) posiciona una dato en una coordenada de la consola	
	HANDLE hCon=GetStdHandle(STD_OUTPUT_HANDLE);
	
	COORD dwPos;
	dwPos.X=x;
	dwPos.Y=y;
	
	SetConsoleCursorPosition(hCon,dwPos); //enviar a la consola
}
//-----------------------------Hacer Marco Del Juego----------------------------//
void Marco_de_Juego(){
	for(int i=2; i<101;i++){ //hacer Lineas Horizonateles
		gotoxy(i,3);cout<<(char)220; //Linea Horizonta 1
		gotoxy(i,29);cout<<(char)219; //Linea Horizonta 2	
	}
	for(int i=4;i<29;i++){  //Hacer Lineas Verticales
		gotoxy(2,i); cout<<(char)219; //Columna 1
		gotoxy(100,i); cout<<(char)219; //Columna 2
	}
	gotoxy(2,29);cout<<(char)219; //Escquina Inferiro Izquierda
	gotoxy(100,29);cout<<(char)219;//Esquina Inferior Derecha
	
}
//--------------hacer cuerpo de la serpiente y la forma que tendra--------------//
void Hacer_Cuerpo_De_Serpiente(){
	for(int i=1; i<Tamano_Inicial_De_Serpiente;i++){
		gotoxy(Cuerpo_Serpiente[i][0],Cuerpo_Serpiente[i][1]); //posicionar el cuerpo de la serpiente
		cout<<(char)184;
	}
}
//-----------Determianra la posicion en la cual iniciara la serpiente-----------//
//----------------Tambien ayudara a que no inicie fuera del Marco---------------//
void Posicion_Del_La_Serpiente(){
	Cuerpo_Serpiente[Aux][0]=x;
	Cuerpo_Serpiente[Aux][1]=y;
	Aux++;
	if (Aux==Tamano_Inicial_De_Serpiente){Aux=1;}
	Hacer_Cuerpo_De_Serpiente();
}
//--------Borrar el cuerpo de la serpiente a medida que avanza en marco---------//
void Borrar_Paso_Serpiente(){
	gotoxy(Cuerpo_Serpiente[Aux][0], Cuerpo_Serpiente[Aux][1]); 
	cout<<" ";
	Posicion_Del_La_Serpiente();
}
//-----Segun La tecla Presioanda, la serpiente se movera en dicha direccion-----//
void Teclear(){
	if (kbhit()){ //Al presionar una tecla
		tecla=getch(); //va a guardar la tecla presioanda 
		//los if ayudan a que la serpiente no cambie en direccion contraria con una sola tecla
		switch(tecla){
			case ARRIBA:
				if(Direccion_Tecla != 2){
					Direccion_Tecla = 1;}
				break;
			case ABAJO:
				if(Direccion_Tecla != 1 ){
					Direccion_Tecla = 2;}
				break;
			case IZQUIERDA:
				if(Direccion_Tecla != 3){
					Direccion_Tecla = 4;}
				break;
			case DERECHA:
				if(Direccion_Tecla != 4){
					Direccion_Tecla = 3;}
				break;	
		}
	}
	
}
//-----La comida se generara de manera aleatoria dentro del Marco generaro-----//
//---Adicionalmente mostrara como aumentan los puntos por la comida agarrada---//
void Comida_Aleatoria(){
	if (x==xComida && y==yComida) {
		
		srand((unsigned)time(NULL));
		xComida=(rand()% 73)+4;
		
		srand((unsigned)time(NULL));
		yComida=(rand()% 19)+4;
		
		Tamano_Inicial_De_Serpiente++;
		
		gotoxy(xComida,yComida); 
		cout<<(char)64;
	
	
		Puntos++; //cada vez que la serpiente coma, aumentara 1 punto
		
		gotoxy(50,2);cout<<"  Puntos: "<<Puntos;
	}
	
}
//--Si la serpiente coliciona con el Marco o con ella misma, el juego termina--//
bool Colicion_Marco_Serpiente(){
	if (y==3 || y== 29 || x==2 || x==100){
		return false; 
	}
	for (int j=Tamano_Inicial_De_Serpiente-1; j>0;j--){
		if(Cuerpo_Serpiente[j][0]==x && Cuerpo_Serpiente [j][1]==y){
			return false;
		}
	}
	return true;
}
//-----------un pequeño cronometro que muestra el tiempo trascurrido-----------//
//--Antes relacionado con el sistema de Puntos pero como que se quedo de lado--//
void Tiempo_De_Juego(){
	tiempo=tiempo+0.05;
	gotoxy(35,2);
	cout<<tiempo;
} 
//-------------------------Mensaje Que saldra al perder-------------------------//
void MensajePerdedor(){
	switch(Elejir_Dificultad){
		case 1:	
			if (Puntos<100){
				if ( !Colicion_Marco_Serpiente()){
					MessageBox(NULL,"En serio? en Facil? Naaaa, intenta de Nuevo","Fin de la Partida", MB_OK); //Muestra mensaje en una pantalla emergente
					system("cls");
				}			
			}else{
				if ( !Colicion_Marco_Serpiente()){
					MessageBox(NULL,"Bien Echo Aunque sea en facil merece Merito","Fin de la Partida", MB_OK); //Muestra mensaje en una pantalla emergente
					system("cls");
				}
				
			}	
		break;
		case 2: 
			if (Puntos<100){
				if ( !Colicion_Marco_Serpiente()){
					MessageBox(NULL,"Perdiste","Fin de la Partida", MB_OK); //Muestra mensaje en una pantalla emergente
					system("cls");
				}			
			}else{
				if ( !Colicion_Marco_Serpiente()){
					MessageBox(NULL,"Bien Echo Intenta aumentar la dificultad","Fin de la Partida", MB_OK); //Muestra mensaje en una pantalla emergente
					system("cls");
				}
			}	
		break;
		case 3:	
			if (Puntos<50){
				if ( !Colicion_Marco_Serpiente()){
					MessageBox(NULL,"Creo que deberias bajar la dificultad","Fin de la Partida", MB_OK); //Muestra mensaje en una pantalla emergente
					system("cls");
				}			
			}else{
				if ( !Colicion_Marco_Serpiente()){
					MessageBox(NULL,"Estas preparado Para la Malaria?","Fin de la Partida", MB_OK); //Muestra mensaje en una pantalla emergente
					system("cls");
				}
				
			}	
		break;
		case 4:
			switch(Puntos){
				case 0:	
					if ( !Colicion_Marco_Serpiente()){
						MessageBox(NULL,"Solo los psicopatas se atreven a hacer este modo","Muy Dificil?", MB_OK); 
						system("cls");
					}
				break;
				case 1:
					if ( !Colicion_Marco_Serpiente()){
						MessageBox(NULL,"Demostraste tener potencial.....haber si puede llegar a los 10 puntos","Muy Dificil?", MB_OK); 
						system("cls");
					}
				break;
				case 10: 
					if ( !Colicion_Marco_Serpiente()){
						MessageBox(NULL,"Tienes Mis respetos STRAKS","............", MB_OK); 
						system("cls");
					}
				break;
				default:
						if ( !Colicion_Marco_Serpiente()){
							MessageBox(NULL,"demuestras bastante potencial, continua","Muy Dificil?", MB_OK); 
							system("cls");
					}
				break;
			}
		break;
	}
}
//--------------------------------The Grand Void--------------------------------//
void TheGrandVoid(){	
	while(tecla != ESC && Colicion_Marco_Serpiente() ){
   	 	
		Borrar_Paso_Serpiente();
		Comida_Aleatoria();
		Tiempo_De_Juego();
		Teclear();
		Teclear(); //se repite ajilizar los movimientos, sino no se puede jirar de manera bruzca
	
		if (Direccion_Tecla==1){y--;}
		if (Direccion_Tecla==2){y++;}
		if (Direccion_Tecla==3){x++;}
		if (Direccion_Tecla==4){x--;}
	
		//Sleep(Dificultad_Velocida);
		
		MensajePerdedor();
	}
}
//-------------Elejir la Dificultad (La Velocidad de la Serpietne)-------------//
void dificultad(){
	cout<<"=========================="<<endl;
	cout<<"elija una dificultad"<<endl;
	cout<<"1: Facil"<<endl;
	cout<<"2: Media"<<endl;
	cout<<"3: Dificil"<<endl;
	cout<<"4: Malaria"<<endl;
	cout<<"=========================="<<endl;
	cout<<"Dificultad?: ";cin>>Elejir_Dificultad;
	
	if (Elejir_Dificultad>4){
		while (Elejir_Dificultad>4){
			cout<<"================================================"<<endl;
			cout<<"COLOQUE UNA DIFICULTAD DENTRO DE LOS PARAMETROS"<<endl;
			cout<<"elija una dificultad"<<endl;
			cout<<"1: Facil"<<endl;
			cout<<"2: Media"<<endl;
			cout<<"3: Dificil"<<endl;
			cout<<"4: Malaria"<<endl;
			cout<<"================================================"<<endl;
			cout<<"Dificultad?: ";cin>>Elejir_Dificultad;	
		}
	}
	
	
	
	if(Elejir_Dificultad)
	switch(Elejir_Dificultad){
		case 1:Dificultad_Velocida=80;break;
		case 2:Dificultad_Velocida=60;break;
		case 3:Dificultad_Velocida=30;break;
		case 4:Dificultad_Velocida=10;break;}
	system("cls"); //Limpiar Pantalla
}
//------------------------------------------------------------------------------//
int main(){
	Interfaz();
	dificultad();	
	gotoxy(50,2);cout<<"  Puntos: "<<Puntos; //mostrar puntos en pantalla
	Marco_de_Juego();
	gotoxy(xComida,yComida);cout<<(char)64;
	TheGrandVoid();
	system("pause>NULL");
	return 0;
}


