import 'package:flutter/foundation.dart';

class Libro {
  final String id;
  final String titulo;
  final String autor;
  final String fechaPublicacion;

  const Libro({
    @required this.id,
    @required this.autor,
    @required this.titulo,
    @required this.fechaPublicacion,
  });
}
