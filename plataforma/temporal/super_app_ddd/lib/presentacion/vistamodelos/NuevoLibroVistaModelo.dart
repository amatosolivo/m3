import 'package:superappddd/aplicacion/casosuso/CrearLibroCasoUso.dart';
import 'package:superappddd/aplicacion/limites/crear_libro/CrearLibroEntrada.dart';
import 'package:superappddd/dominio/value_objects/Autor.dart';
import 'package:superappddd/dominio/value_objects/FechaPublicacion.dart';
import 'package:superappddd/dominio/value_objects/ISBN.dart';
import 'package:superappddd/dominio/value_objects/Identity.dart';
import 'package:superappddd/dominio/value_objects/Titulo.dart';
import 'package:superappddd/presentacion/modelos/Libro.dart';

class NuevoLibroVistaModelo {
  final CrearLibroCasoUso _crearLibroCasoUso;
  List<String> _mensajesError = [];
  Libro _libro;

  Libro get libro => _libro;

  NuevoLibroVistaModelo(this._crearLibroCasoUso);

  Future<void> nuevoLibro(
    String titulo,
    String autor,
    String isbn,
    String fechaPublicacion,
    String libreroId,
  ) async {
    Titulo vTitulo = Titulo.crear(titulo).fold((l) {
      _mensajesError.add(l.mensaje);
      return null;
    }, (r) => r);

    Autor vAutor = Autor.crear(autor).fold((l) {
      _mensajesError.add(l.mensaje);
      return null;
    }, (r) => r);

    ISBN vISBN = ISBN.crear(isbn).fold((l) {
      _mensajesError.add(l.mensaje);
      return null;
    }, (r) => r);

    FechaPublicacion vFechaPublicacion = FechaPublicacion.crear(fechaPublicacion).fold((l) {
      _mensajesError.add(l.mensaje);
      return null;
    }, (r) => r);

    Identity vLibreroId = Identity.fromString(libreroId);

    if (_mensajesError.isNotEmpty) throw Exception(_mensajesError.join('\n'));

    var entrada = CrearLibroEntrada(
      libreroId: vLibreroId,
      titulo: vTitulo,
      autor: vAutor,
      isbn: vISBN,
      fechaPublicacion: vFechaPublicacion,
    );

    var resultado = await _crearLibroCasoUso.ejecutar(entrada);

    resultado.fold(
        (l) => throw Exception(l.mensaje),
        (r) => _libro = Libro(
              id: r.libroId.id,
              titulo: r.titulo.valor,
              isbn: r.isbn.valor,
              autor: r.autor.valor,
              fechaPublicacion: r.fechaPublicacion.toString(),
            ));
  }
}
