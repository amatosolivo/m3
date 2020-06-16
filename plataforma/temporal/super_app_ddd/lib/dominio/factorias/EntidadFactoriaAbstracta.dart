import 'package:flutter/foundation.dart';
import 'package:superappddd/dominio/entidades/Librero.dart';
import 'package:superappddd/dominio/entidades/Libro.dart';
import 'package:superappddd/dominio/value_objects/Autor.dart';
import 'package:superappddd/dominio/value_objects/FechaPublicacion.dart';
import 'package:superappddd/dominio/value_objects/ISBN.dart';
import 'package:superappddd/dominio/value_objects/Titulo.dart';

abstract class EntidadFactoriaAbstracta {
  Libro nuevoLibro({
    @required Titulo titulo,
    @required Autor autor,
    @required ISBN isbn,
    @required FechaPublicacion fechaPublicacion,
  });

  Librero nuevoLibrero();
}
