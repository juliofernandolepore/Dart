/*    creacion de CLASES: que son plantillas para crear o instanciar 
nuevos objetos    */

class Persona {
  /*     ATRIBUTOS O PROPIEDADES    */
  String nombre = "fernando";
  int edad = 39;

  /*   CONSTRUCTOR DE CLASE    */
  Persona(argNom, int argEdad) {
    this.nombre = argNom;
    this.edad = argEdad;
  }
  void mostrarDatos() {
    print(nombre);
    print(edad);
  }
}

void main() {
  var persona1 = Persona("carlos", 60);
  print(persona1.nombre);
  print(persona1.edad);
}