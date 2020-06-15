import 'package:dartz/dartz.dart';
import 'package:superappddd/aplicacion/limites/crear_libro/CrearLibroCasoUsoAbstracto.dart';
import 'package:superappddd/aplicacion/limites/crear_libro/CrearLibroEntrada.dart';
import 'package:superappddd/aplicacion/limites/crear_libro/CrearLibroSalida.dart';
import 'package:superappddd/dominio/ExcepcionesDeDominio.dart';
import 'package:superappddd/dominio/entidades/Librero.dart';
import 'package:superappddd/dominio/entidades/Libro.dart';
import 'package:superappddd/dominio/factorias/EntidadFactoriaAbstracta.dart';
import 'package:superappddd/dominio/repositorios/LibreroRepositorioAbstracta.dart';
import 'package:superappddd/dominio/repositorios/LibroRepositorioAbstracta.dart';
import 'package:superappddd/dominio/value_objects/Fallido.dart';
import 'package:superappddd/dominio/value_objects/Identity.dart';

class CrearLibroCasoUso implements CrearLibroCasoUsoAbstracto {
  final LibreroRepositorioAbstracta _libreroRepositorio;
  final LibroRepositorioAbstracta _libroRepositorio;
  final EntidadFactoriaAbstracta _entidadFactoria;

  const CrearLibroCasoUso({
    LibreroRepositorioAbstracta libreroRepositorioAbstracta,
    LibroRepositorioAbstracta libroRepositorioAbstracta,
    EntidadFactoriaAbstracta entidadFactoriaAbstracta,
  })  : _libreroRepositorio = libreroRepositorioAbstracta,
        _libroRepositorio = libroRepositorioAbstracta,
        _entidadFactoria = entidadFactoriaAbstracta;

  @override
  Future<Either<Fallido, CrearLibroSalida>> ejecutar(CrearLibroEntrada entrada) async {
    Libro nuevoLibro = _crearLibroDesdeEntrada(entrada);

    Either<Fallido, Librero> resultado = await _addLibroAlLibrero(nuevoLibro, entrada.libreroId);
    if (resultado.isLeft()) return resultado.fold((err) => left(err), (_) => null);

    var librero = resultado.getOrElse(() => null);

    await _libroRepositorio.nuevo(nuevoLibro);
    await _libreroRepositorio.actualizar(librero);

    return _construirSalidaConNuevoLibro(nuevoLibro);
  }

  Either<Fallido, CrearLibroSalida> _construirSalidaConNuevoLibro(Libro nuevoLibro) {
    var salida = CrearLibroSalida(
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

  Libro _crearLibroDesdeEntrada(CrearLibroEntrada entrada) {
    return _entidadFactoria.nuevoLibro(
      titulo: entrada.titulo,
      autor: entrada.autor,
      isbn: entrada.isbn,
      fechaPublicacion: entrada.fechaPublicacion,
    );
  }
}
