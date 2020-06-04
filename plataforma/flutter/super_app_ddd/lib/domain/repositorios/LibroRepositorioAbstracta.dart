import 'package:flutter/foundation.dart';
import 'package:superappddd/domain/entidades/Libro.dart';
import 'package:superappddd/domain/value_objects/Identity.dart';

abstract class LibroRepositorioAbstracta {
  nuevo(Libro libro);
  actualizar(Libro libro);
  borrar({@required Identity libroId});
  buscar({@required Identity libroId});
  todos();
}
