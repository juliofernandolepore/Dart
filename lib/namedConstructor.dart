/* CONSTRUCTORES NOMBRADOS --- NAMED CONSTRUCTORS */

void main() {
  /*  en Main creo una instancia y ejecuto un metodo creado en la misma */
  var persona1 = Persona("juan", 55);
  persona1.mostrarDatos();

  var persona2 = Persona.conNombre("Tomas");
  persona2.mostrarDatos();

  var persona3 = Persona.conEdad(25);
  persona3.mostrarDatos();
}

class Persona {
  /*     ATRIBUTOS O PROPIEDADES    */
  String nombre = "fernando";
  int edad = 39;

  /*   CONSTRUCTOR DE CLASE    */
  Persona(argNom, int argEdad) {
    this.nombre = argNom;
    this.edad = argEdad;
  }
  /*   puedo agregarle otros CONSTRUCTORES, en este constructor hizo una
  combinacion de las 2 formas de declarar en una, al nomnbre lo recibe en
  los argumentos y a la edad la recibe en el cuerpo */

  Persona.conNombre(this.nombre) {
    this.edad = 40;
  }

  Persona.conEdad(this.edad) {
    this.nombre = "jose";
  }

  void mostrarDatos() {
    print(nombre);
    print(edad);
  }
}
