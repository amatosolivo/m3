import 'package:flutter/foundation.dart';
import 'package:superappddd/domain/entidades/Libro.dart';
import 'package:superappddd/domain/value_objects/Autor.dart';
import 'package:superappddd/domain/value_objects/FechaPublicacion.dart';
import 'package:superappddd/domain/value_objects/ISBN.dart';
import 'package:superappddd/domain/value_objects/Identity.dart';
import 'package:superappddd/domain/value_objects/Titulo.dart';

class LibroModelo extends Libro {
  Identity id;
  Identity libreroId;
  Titulo titulo;
  Autor autor;
  ISBN isbn;
  FechaPublicacion fechaPublicacion;

  LibroModelo({
    @required this.id,
    @required this.libreroId,
    @required this.titulo,
    @required this.autor,
    @required this.isbn,
    @required this.fechaPublicacion,
  });

  factory LibroModelo.fromMap(Map<String, dynamic> map) {
    return LibroModelo(
      id: Identity.fromString(map["Libro_Id"]),
      libreroId: Identity.fromString(map["Librero_Id"]),
      titulo: Titulo.crear(map["Titulo"]).getOrElse(() => null),
      autor: Autor.crear(map["Autor"]).getOrElse(() => null),
      isbn: ISBN.crear(map["ISBN"]).getOrElse(() => null),
      fechaPublicacion: FechaPublicacion.crear(map["Fecha_Publicacion"]).getOrElse(() => null),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      "Libro_Id": id.id,
      "Librero_Id": libreroId.id,
      "Titulo": titulo.valor,
      "Autor": autor.valor,
      "ISBN": isbn.valor,
      "Fecha_Publicacion": fechaPublicacion.toString(),
    };
  }
}
