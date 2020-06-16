import 'package:superappddd/dominio/entidades/Libro.dart';
import 'package:superappddd/dominio/value_objects/Autor.dart';
import 'package:superappddd/dominio/value_objects/FechaPublicacion.dart';
import 'package:superappddd/dominio/value_objects/ISBN.dart';
import 'package:superappddd/dominio/value_objects/Identity.dart';
import 'package:superappddd/dominio/value_objects/Titulo.dart';

class LibroDTO {
  Identity id;
  Identity libreroId;
  Titulo titulo;
  Autor autor;
  ISBN isbn;
  FechaPublicacion fechaPublicacion;

  LibroDTO({
    this.id,
    this.libreroId,
    this.titulo,
    this.autor,
    this.isbn,
    this.fechaPublicacion,
  });

  LibroDTO.fromEntity(Libro libro)
      : id = libro.id,
        libreroId = libro.libreroId,
        titulo = libro.titulo,
        autor = libro.autor,
        isbn = libro.isbn,
        fechaPublicacion = libro.fechaPublicacion;
}
