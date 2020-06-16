import 'package:dartz/dartz.dart';
import 'package:superappddd/aplicacion/limites/libro_por_id/TraerLibroPorIdCasoUsoAbstracto.dart';
import 'package:superappddd/aplicacion/limites/libro_por_id/TraerLibroPorIdEntrada.dart';
import 'package:superappddd/aplicacion/limites/libro_por_id/TraerLibroPorIdSalida.dart';
import 'package:superappddd/aplicacion/limites/todos_libros/LibroDTO.dart';
import 'package:superappddd/dominio/repositorios/LibroRepositorioAbstracta.dart';
import 'package:superappddd/dominio/value_objects/Fallido.dart';

class TraerLibroPorIdCasoUso implements TraerLibroPorIdCasoUsoAbstracto {
  final LibroRepositorioAbstracta _libroRepositorio;

  TraerLibroPorIdCasoUso({LibroRepositorioAbstracta libroRepositorio}) : _libroRepositorio = libroRepositorio;

  @override
  Future<Either<Fallido, TraerLibroPorIdSalida>> ejecutar(TraerLibroPorIdEntrada entrada) async {
    var libro = await _libroRepositorio.buscar(libroId: entrada.libroId);
    if (libro == null) return Left(Fallido('Libro no encontrado'));
    return Right(TraerLibroPorIdSalida(libro: LibroDTO.fromEntity(libro)));
  }
}
