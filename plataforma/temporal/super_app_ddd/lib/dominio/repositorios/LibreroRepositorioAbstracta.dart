import 'package:superappddd/dominio/entidades/Librero.dart';
import 'package:superappddd/dominio/value_objects/Identity.dart';

abstract class LibreroRepositorioAbstracta {
  nuevo(Librero librero);
  actualizar(Librero librero);
  Future<Librero> buscar(Identity libreroId);
}
