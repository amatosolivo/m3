import 'package:superappddd/aplicacion/limites/crear_librero/CrearLibreoCasoUsoAbstracto.dart';
import 'package:superappddd/aplicacion/limites/crear_librero/CrearLibreroSalida.dart';
import 'package:superappddd/dominio/factorias/EntidadFactoriaAbstracta.dart';
import 'package:superappddd/dominio/repositorios/LibreroRepositorioAbstracta.dart';

class CrearLibreroCasoUso implements CrearLibreroCasoUsoAbstracto {
  final LibreroRepositorioAbstracta _libreroRepositorio;
  final EntidadFactoriaAbstracta _entidadFactoria;

  CrearLibreroCasoUso(this._libreroRepositorio, this._entidadFactoria);

  @override
  Future<CrearLibreroSalida> ejecutar() async {
    var librero = _entidadFactoria.nuevoLibrero();
    await _libreroRepositorio.nuevo(librero);
    return CrearLibreroSalida(libreroId: librero.id);
  }
}
