import 'package:flutter/foundation.dart';
import 'package:superappddd/domain/entidades/Librero.dart';
import 'package:superappddd/domain/entidades/Libro.dart';
import 'package:superappddd/domain/factorias/EntidadFactoriaAbstracta.dart';
import 'package:superappddd/domain/value_objects/Autor.dart';
import 'package:superappddd/domain/value_objects/FechaPublicacion.dart';
import 'package:superappddd/domain/value_objects/ISBN.dart';
import 'package:superappddd/domain/value_objects/Identity.dart';
import 'package:superappddd/domain/value_objects/Titulo.dart';
import 'package:uuid/uuid.dart';

class EntidadFactoria implements EntidadFactoriaAbstracta {
  @override
  Librero nuevoLibrero() {
    return Librero(id: Identity.fromString(Uuid().v4()));
  }

  @override
  Libro nuevoLibro({
    @required Titulo titulo,
    @required Autor autor,
    @required ISBN isbn,
    @required FechaPublicacion fechaPublicacion,
  }) {
    return Libro(
      id: Identity.fromString(Uuid().v4()),
      titulo: titulo,
      autor: autor,
      isbn: isbn,
      fechaPublicacion: fechaPublicacion,
    );
  }
}
