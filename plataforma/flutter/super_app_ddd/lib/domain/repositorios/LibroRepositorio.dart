import 'package:flutter/foundation.dart';
import 'package:superappddd/dominio/entidades/Libro.dart';
import 'package:superappddd/dominio/value_objects/Identity.dart';

abstract class LibroRepositorio {
  nuevo(Libro libro);
  actualizar(Libro libro);
  borrar({@required Identity libroId});
  buscar({@required Identity libroId});
  todos();
}