import 'package:superappddd/domain/entidades/Libro.dart';
import 'package:superappddd/domain/repositorios/LibroRepositorioAbstracta.dart';
import 'package:superappddd/domain/value_objects/Identity.dart';
import 'package:superappddd/infraestructura/fuentesDatos/FuenteDatosAbstracta.dart';
import 'package:superappddd/modelos/LibroModelo.dart';

class LibroRepositorio implements LibroRepositorioAbstracta {
  FuenteDatosAbstracta _fuenteDatos;

  LibroRepositorio({FuenteDatosAbstracta fuenteDatos}) : _fuenteDatos = fuenteDatos;

  @override
  Future<Libro> actualizar(Libro libro) async {
    return await _fuenteDatos.actualizar(libro);
  }

  @override
  borrar({Identity libroId}) async {
    return await _fuenteDatos.borrar(libroId);
  }

  @override
  Future<Libro> buscar({Identity libroId}) async {
    return await _fuenteDatos.buscar(libroId);
  }

  @override
  Future<List<Libro>> buscarTodos() async {
    return await _fuenteDatos.buscarTodos();
  }

  @override
  nuevo(Libro libro) async {
    var modelo = LibroModelo(
      id: libro.id,
      libreroId: libro.libreroId,
      titulo: libro.titulo,
      autor: libro.autor,
      isbn: libro.isbn,
      fechaPublicacion: libro.fechaPublicacion,
    );
    return await _fuenteDatos.nuevo(modelo);
  }
}
