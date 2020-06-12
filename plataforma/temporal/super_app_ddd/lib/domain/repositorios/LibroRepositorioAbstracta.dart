import 'package:flutter/foundation.dart';
import 'package:superappddd/domain/entidades/Libro.dart';
import 'package:superappddd/domain/value_objects/Identity.dart';

abstract class LibroRepositorioAbstracta {
  nuevo(Libro libro);
  actualizar(Libro libro);
  borrar({@required Identity libroId});
  Future<Libro> buscar({@required Identity libroId});
  Future<List<Libro>> buscarTodos();
}
