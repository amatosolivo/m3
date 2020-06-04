// Este es un DTO para la entrada
import 'package:flutter/foundation.dart';
import 'package:superappddd/domain/value_objects/Autor.dart';
import 'package:superappddd/domain/value_objects/FechaPublicacion.dart';
import 'package:superappddd/domain/value_objects/ISBN.dart';
import 'package:superappddd/domain/value_objects/Identity.dart';
import 'package:superappddd/domain/value_objects/Titulo.dart';

class AddLibroEntrada {
  final Identity libreroId;
  final Titulo titulo;
  final Autor autor;
  final ISBN isbn;
  final FechaPublicacion fechaPublicacion;

  const AddLibroEntrada({
    @required this.libreroId,
    @required this.autor,
    @required this.fechaPublicacion,
    @required this.isbn,
    @required this.titulo,
  })  : assert(libreroId != null),
        assert(titulo != null),
        assert(autor != null),
        assert(isbn != null),
        assert(fechaPublicacion != null);
}
