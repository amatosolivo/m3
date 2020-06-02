import 'package:flutter/foundation.dart';
import 'package:superappddd/domain/ExcepcionesDeDominio.dart';
import 'package:superappddd/domain/entidades/Libro.dart';
import 'package:superappddd/domain/value_objects/Identity.dart';

class Librero {
  static const CAPACIDAD_MAXIMA = 10;
  Identity id;
  List<Libro> _libros;
  List<Libro> get libros => _libros;

  Librero({@required this.id}) {
    _libros = List();
  }

  addLibro(Libro libro) {
    if(_libros.length == CAPACIDAD_MAXIMA)
      throw ExcepcionesDeDominio(mensaje: 'El librero a alcanzado su capacidad maxima');
    else
      _libros.add(libro);
  }
}