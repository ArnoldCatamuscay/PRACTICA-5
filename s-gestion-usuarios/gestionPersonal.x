/*Declaracion de datos a transferir entre el cliente y el servidor gestion pacientes*/
/*Declaracion de constantes*/
const MAXNOM = 30;
const MAXDAT = 20;
const MAXTIPOID = 4;
/*Declaracion de la estructura que permite almacenar los datos del personal*/
struct datos_personal{
    char tipoId[MAXTIPOID];
    int id;
    char nombreCompleto[MAXNOM];
    char ocupacion[MAXDAT];
    char usuario[MAXDAT];
    char clave[MAXDAT];
};
/*Declaración de la estructura que permite almacenar los datos de las credenciales de acceso del personal*/
struct datos_credencial{
    char usuario[MAXDAT];
    char clave[MAXDAT];
};
/*Definicion de las operaciones que se pueden realizar*/
program gestion_personal{
    version gestion_personal_version{
        bool registrarPersonal(datos_personal objPersonal)=1;
        datos_personal consultarPersonal(int id)=2;
        bool abrirSesion(datos_credencial objCredencial)=3;
    }=1;
}=0x20000021;
