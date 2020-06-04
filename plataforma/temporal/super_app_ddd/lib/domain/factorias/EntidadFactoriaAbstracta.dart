import 'package:flutter/foundation.dart';
import 'package:superappddd/domain/entidades/Librero.dart';
import 'package:superappddd/domain/entidades/Libro.dart';
import 'package:superappddd/domain/value_objects/Autor.dart';
import 'package:superappddd/domain/value_objects/FechaPublicacion.dart';
import 'package:superappddd/domain/value_objects/ISBN.dart';
import 'package:superappddd/domain/value_objects/Titulo.dart';

abstract class EntidadFactoriaAbstracta {
  Libro nuevoLibro({
    @required Titulo titulo,
    @required Autor autor,
    @required ISBN isbn,
    @required FechaPublicacion fechaPublicacion,
  });

  Librero nuevoLibrero();
}
