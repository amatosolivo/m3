import 'package:dartz/dartz.dart';
import 'package:superappddd/domain/value_objects/Fallido.dart';

abstract class CasoUsoAbstracta<TCasoUsoEntrada, TCasoUsoSalida> {
  Future<Either<Fallido, TCasoUsoSalida>> ejecutar(TCasoUsoEntrada entrada);
}
