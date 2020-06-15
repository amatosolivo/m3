import 'package:superappddd/dominio/entidades/Libro.dart';
import 'package:superappddd/dominio/repositorios/LibroRepositorioAbstracta.dart';
import 'package:superappddd/dominio/value_objects/Identity.dart';
import 'package:superappddd/modelos/LibroModelo.dart';

class LibroRepositorioFalso implements LibroRepositorioAbstracta {
  var map = {
    "Libro_Id": "aaa",
    "Librero_Id": "bbb",
    "Titulo": "Red Rose",
    "Autor": "Juan Jensen",
    "ISBN": "ISBN-10: 0-563-52068-9",
    "Fecha_Publicacion": "2020-01-20",
  };
  var map2 = {
    "Libro_Id": "aab",
    "Librero_Id": "bbb",
    "Titulo": "Whisper",
    "Autor": "Juan Jensen",
    "ISBN": "ISBN-10: 0-596-52069-9",
    "Fecha_Publicacion": "2015-01-20",
  };

  List<Libro> libros;

  LibroRepositorioFalso() {
    libros = [
      LibroModelo.fromMap(map),
      LibroModelo.fromMap(map2),
      LibroModelo.fromMap(map),
      LibroModelo.fromMap(map2),
      LibroModelo.fromMap(map),
      LibroModelo.fromMap(map2),
    ];
  }

  @override
  actualizar(Libro libro) {
    return null;
  }

  @override
  borrar({Identity libroId}) {
    return null;
  }

  @override
  Future<Libro> buscar({Identity libroId}) {
    return null;
  }

  @override
  Future<List<Libro>> buscarTodos() async {
    return libros;
  }

  @override
  nuevo(Libro libro) {
    return null;
  }
}
