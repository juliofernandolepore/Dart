/*colecciones desordenadas: SET , los elementos que contiene son unicos
y no puede haber repetidos o duplicados */

void main(List<String> args) {
  /* declaracion de SET  */
  var animales = <String>{"perro", "gato", "raton"};
  print(animales);
  /*  otra forma de declarar SET  */
  Set<String> frutas = {"manzana", "banana", "pera"};
  print(frutas);
  /*otra forma de declarar SET */
  Set<String> colores = new Set();
  colores.add("rojo");
  colores.add("verde");
  colores.add("amarillo");
  print(colores);
}
