import 'dart:collection';

import 'package:superappddd/aplicacion/limites/todos_libros/LibroDTO.dart';

class TodosLosLibrosSalida {
  final UnmodifiableListView<LibroDTO> libros;

  TodosLosLibrosSalida({this.libros});
}
