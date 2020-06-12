import 'package:dartz/dartz.dart';
import 'package:superappddd/aplicacion/limites/add_libro/AdLibroSalida.dart';
import 'package:superappddd/aplicacion/limites/add_libro/AddLibroCasoUsoAbstracto.dart';
import 'package:superappddd/aplicacion/limites/add_libro/AddLibroEntrada.dart';
import 'package:superappddd/dominio/ExcepcionesDeDominio.dart';
import 'package:superappddd/dominio/entidades/Librero.dart';
import 'package:superappddd/dominio/entidades/Libro.dart';
import 'package:superappddd/dominio/factorias/EntidadFactoriaAbstracta.dart';
import 'package:superappddd/dominio/repositorios/LibreroRepositorioAbstracta.dart';
import 'package:superappddd/dominio/repositorios/LibroRepositorioAbstracta.dart';
import 'package:superappddd/dominio/value_objects/Fallido.dart';
import 'package:superappddd/dominio/value_objects/Identity.dart';

class AddLibroCasoUso implements AddLibroCasoUsoAbstracto {
  final LibreroRepositorioAbstracta _libreroRepositorio;
  final LibroRepositorioAbstracta _libroRepositorio;
  final EntidadFactoriaAbstracta _entidadFactoria;

  const AddLibroCasoUso({
    LibreroRepositorioAbstracta libreroRepositorioAbstracta,
    LibroRepositorioAbstracta libroRepositorioAbstracta,
    EntidadFactoriaAbstracta entidadFactoriaAbstracta,
  })  : _libreroRepositorio = libreroRepositorioAbstracta,
        _libroRepositorio = libroRepositorioAbstracta,
        _entidadFactoria = entidadFactoriaAbstracta;

  @override
  Future<Either<Fallido, AddLibroSalida>> ejecutar(AddLibroEntrada entrada) async {
    Libro nuevoLibro = _crearLibroDesdeEntrada(entrada);

    Either<Fallido, Librero> resultado = await _addLibroAlLibrero(nuevoLibro, entrada.libreroId);
    if (resultado.isLeft()) return resultado.fold((err) => left(err), (_) => null);

    var librero = resultado.getOrElse(() => null);

    await _libroRepositorio.nuevo(nuevoLibro);
    await _libreroRepositorio.actualizar(librero);

    return _construirSalidaConNuevoLibro(nuevoLibro);
  }

  Either<Fallido, AddLibroSalida> _construirSalidaConNuevoLibro(Libro nuevoLibro) {
    var salida = AddLibroSalida(
      libroId: nuevoLibro.id,
      libreroId: nuevoLibro.libreroId,
      autor: nuevoLibro.autor,
      fechaPublicacion: nuevoLibro.fechaPublicacion,
      isbn: nuevoLibro.isbn,
      titulo: nuevoLibro.titulo,
    );

    return Right(salida);
  }

  Future<Either<Fallido, Librero>> _addLibroAlLibrero(Libro nuevoLibro, Identity libreroId) async {
    Librero librero = await _libreroRepositorio.buscar(libreroId);
    if (librero == null) return Left(Fallido('librero no encontrado!'));
    try {
      librero.addLibro(nuevoLibro);
    } on ExcepcionesDeDominio {
      return Left(Fallido('el librero ya esta lleno'));
    }

    return Right(librero);
  }

  Libro _crearLibroDesdeEntrada(AddLibroEntrada entrada) {
    return _entidadFactoria.nuevoLibro(
      titulo: entrada.titulo,
      autor: entrada.autor,
      isbn: entrada.isbn,
      fechaPublicacion: entrada.fechaPublicacion,
    );
  }
}
