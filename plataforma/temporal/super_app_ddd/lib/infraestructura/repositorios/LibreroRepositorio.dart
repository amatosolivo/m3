import 'package:superappddd/dominio/entidades/Librero.dart';
import 'package:superappddd/dominio/repositorios/LibreroRepositorioAbstracta.dart';
import 'package:superappddd/dominio/value_objects/Identity.dart';
import 'package:superappddd/infraestructura/fuentesDatos/FuenteDatosAbstracta.dart';
import 'package:superappddd/modelos/LibreroModelo.dart';
import 'package:superappddd/modelos/LibroModelo.dart';

class LibreroRepositorio implements LibreroRepositorioAbstracta {
  FuenteDatosAbstracta _fuenteDatos;

  LibreroRepositorio(this._fuenteDatos);

  @override
  actualizar(Librero librero) {
    return null;
  }

  @override
  Future<Librero> buscar(Identity libreroId) async {
    LibreroModelo libreroModelo = await _fuenteDatos.buscarLibrero(libreroId);
    List<LibroModelo> libros = [];
    if (libreroModelo != null) libros = await _fuenteDatos.buscarLibrosEnLibrero(libreroId);

    Librero librero = Librero(id: libreroId);
    libros.forEach((b) => librero.addLibro(b));
    return librero;
  }

  @override
  nuevo(Librero librero) async {
    var libreroModelo = LibreroModelo(id: librero.id);
    return await _fuenteDatos.crearLibrero(libreroModelo);
  }
}
