/*   trabajar con clases COLAS: son colecciones para ser manipuladas por
el inicio y el final de la clase */

import 'dart:collection';

void main() {
  /*    DECLARACION DE UNA COLA */
  var Cola = Queue<int>();

  Cola.add(50);
  Cola.add(500);
  Cola.add(8);
  Cola.addFirst(50);
  Cola.addLast(600);
  print(Cola);
/*  creo una nueva cola y le agrego varios elementos de una vez con metodo */

  var Cola2 = Queue<int>();
/* el parametro del metodo addAll es un arreglo o lista de valores */
  Cola2.addAll([100, 52, 6, 30, 48, 70, 9, 20, 25, 63]);
  print(Cola2);
}
