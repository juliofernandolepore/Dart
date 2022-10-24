/* colecciones en dart -   listas (arreglos) */

List<int> lista1 = [1, 2, 3, 4, 5, 6, 7, 8, 9];
var lista2 = ["john", "peter", 3, true, "mark"];
//otra manera de declarar listas
List<String> nombres = ["juan", "mario", "alberto", "pedro", "matias", "jorge"];
void main() {
  /*  ************ DESTRUCTURACION ***********  */
  var nombres2 = [...nombres];
  print(lista1);
  print(lista2);
  print(lista2[3]);

  //modificacion de valores en una lista
  lista2[1] = 'maria';
  print(lista2[1]);

  print(nombres);
  print(nombres[3]);
  /* este es un ejemplo de paso por referencia o punteros en memoria, ya que
  se modifico nombres y se vio afectado nombres2 (que es una copia, pero en 
  realidad es un paso por referencia) */
  // var nombres2 = nombres;

  /* la solucion posible es la destructuracion de los elementos del objeto
  a traves del "spread operator" u operador de dispersion. */
  print(nombres2);
  print(nombres2);

  /*   LA LISTA PADRE NOMBRES CON UN CAMBIO NO AFECTARA LA LISTA NOMBRES2 GRACIAS AL
  USO DE LA DESTRUCTURACION */
  nombres[0] = "fernando";
  print(nombres);
  print(nombres2); //ya no se ve agectado por el PUNTERO EN MEMORIA.

  /*  METODO "add()"" PARA AGREGAR VALORES A LA LISTA(ARREGLO) */
  nombres.add("francisco");
  print(nombres);

  /*  OTRA PRACTICA MAS DE DESTRUCTURACION */
  List nombres3 = [...nombres];
  nombres3.add("jack");
  print(nombres3);

  /* creacion de Listas con dimension FIJA */
  List numeros = List<int>.filled(5, 0);
  /* esta es una lista de 5 elemento con valor 0 cada uno */

  print(numeros);
  /* numeros.add(50);  aqui no deja agregar mas capacidad a la lista*/
  numeros[0] = 80;
  print(numeros);

  /*    METODOS DE LAS LISTAS  */
  /* este ejemplo usare "getRange" que es para iterar. al primer argumento
  lo incluye pero en el segundo argumento(no se cuenta) es hasta el 
  elemento anterior */

  print(nombres3.getRange(1, 3));

  /* ahora uso el metodo setAll para incorporar a la lista en el indice
  que considere adecuado*/
  nombres3.setAll(0, ["incorporado1", "incorporado2"]);
  print(nombres3);

  /*      ahora practicando el metodo "foreach" en listas */
  nombres3.forEach((receptor) {
    return print(receptor);
  });
  /* otra forma de escribir la funcion dentro del metodo es la siguiente,
  en este caso hago uso de "arrow function o funcion flecha" */
  nombres3.forEach((receptor) => print(receptor));

  /*  LISTAS DINAMICAS: es una lista que permite almacenar datos de 
  distintos tipos.  */
  List<dynamic> miListaDinamica = [];
  print(miListaDinamica);

  /*   PROPIEDADES Y METODOS UTILES EN DART*/
  print(nombres.length); //devuelve la cantidad de elementos que contiene.
  //ahora revertir el orden de los elementos.
  print(nombres.reversed);
  /* ahora a practicar con el metodo "  insert"   */
  nombres.insert(3, "TERCERO");
  print(nombres);
  /* ahora a probar el metodo "insertAll" la cual inserta varios elementos */
  nombres.insertAll(0, ["sub1", "sub2", "sub3"]);
  print(nombres);
  /* ahora a probar un metodo para remover un valor en un indice determinado */
  nombres.removeAt(6);
  print(nombres);
  /* ahora un metodo que elimina con target especifico */
  nombres.remove("sub2");
  print(nombres);
  /* ahora un metodo con funcion o condicion a evaluar */
  nombres.removeWhere((elemento) => elemento == "sub1");
  print(nombres);
}
