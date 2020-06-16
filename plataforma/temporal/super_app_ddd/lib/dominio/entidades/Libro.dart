import 'package:superappddd/dominio/value_objects/Autor.dart';
import 'package:superappddd/dominio/value_objects/FechaPublicacion.dart';
import 'package:superappddd/dominio/value_objects/ISBN.dart';
import 'package:superappddd/dominio/value_objects/Identity.dart';
import 'package:superappddd/dominio/value_objects/Titulo.dart';

class Libro {
  Identity id;
  Identity libreroId;
  Titulo titulo;
  Autor autor;
  ISBN isbn;
  FechaPublicacion fechaPublicacion;

  Libro({
    this.id,
    this.autor,
    this.fechaPublicacion,
    this.isbn,
    this.libreroId,
    this.titulo,
  });
}
