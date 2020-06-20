import 'package:superappddd/dominio/value_objects/Identity.dart';
import 'package:superappddd/modelos/LibreroModelo.dart';
import 'package:superappddd/modelos/LibroModelo.dart';

abstract class FuenteDatosAbstracta {
  nuevo(LibroModelo model);
  borrar(Identity libroId);
  actualizar(LibroModelo libro);
  Future<List<LibroModelo>> buscarTodos();
  Future<LibroModelo> buscar(Identity libroId);

  // Lo que sigue a continuacion deberia estar en un repositorio separado y no en este
  // ya que son de la entidad Librero
  Future<void> crearLibrero(LibreroModelo model);
  Future<LibreroModelo> buscarLibrero(Identity libreroId);
  Future<List<LibroModelo>> buscarLibrosEnLibrero(Identity libreroId);
}
