import 'package:superappddd/domain/entidades/Librero.dart';
import 'package:superappddd/domain/value_objects/Identity.dart';

abstract class LibreroRepositorioAbstracta {
  nuevo(Librero librero);
  actualizar(Librero librero);
  buscar(Identity libreroId);
}
