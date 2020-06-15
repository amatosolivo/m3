import 'package:superappddd/dominio/entidades/Librero.dart';
import 'package:superappddd/dominio/repositorios/LibreroRepositorioAbstracta.dart';
import 'package:superappddd/dominio/value_objects/Identity.dart';

class LibreroRepositorioFalso implements LibreroRepositorioAbstracta {
  List<Librero> libreros = [Librero(id: Identity.fromString('bbb'))];

  @override
  actualizar(Librero librero) {
    return null;
  }

  @override
  Future<Librero> buscar(Identity libreroId) async {
    return libreros.where((sh) => sh.id == libreroId).first;
  }

  @override
  nuevo(Librero librero) {
    return libreros.add(librero);
  }
}
