// Esta es un DTO para la Respuesta

import 'package:flutter/foundation.dart';
import 'package:superappddd/dominio/value_objects/Autor.dart';
import 'package:superappddd/dominio/value_objects/FechaPublicacion.dart';
import 'package:superappddd/dominio/value_objects/ISBN.dart';
import 'package:superappddd/dominio/value_objects/Identity.dart';
import 'package:superappddd/dominio/value_objects/Titulo.dart';

class CrearLibroSalida {
  final Identity libroId;
  final Identity libreroId;
  final Titulo titulo;
  final Autor autor;
  final ISBN isbn;
  final FechaPublicacion fechaPublicacion;

  const CrearLibroSalida({
    @required this.libroId,
    @required this.libreroId,
    @required this.autor,
    @required this.fechaPublicacion,
    @required this.isbn,
    @required this.titulo,
  });
}