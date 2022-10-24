//colecciones en dart

//listas (arreglos)

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
  List numeros = List();
  print(numeros);
}
