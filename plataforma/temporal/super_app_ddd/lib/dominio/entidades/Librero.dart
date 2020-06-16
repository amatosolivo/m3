import 'package:flutter/foundation.dart';
import 'package:superappddd/aplicacion/constantes/generales.dart';
import 'package:superappddd/dominio/ExcepcionesDeDominio.dart';
import 'package:superappddd/dominio/entidades/Libro.dart';
import 'package:superappddd/dominio/value_objects/Identity.dart';

class Librero {
  Identity id;
  List<Libro> _libros;
  List<Libro> get libros => _libros;

  Librero({@required this.id}) {
    _libros = List();
  }

  addLibro(Libro libro) {
    if (_libros.length == CAPACIDAD_LIBRERO)
      throw ExcepcionesDeDominio(mensaje: 'El librero a alcanzado su capacidad maxima');
    else
      _libros.add(libro);
  }
}
