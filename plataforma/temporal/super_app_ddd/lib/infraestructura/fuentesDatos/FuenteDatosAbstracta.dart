import 'package:superappddd/dominio/value_objects/Identity.dart';
import 'package:superappddd/modelos/LibroModelo.dart';

abstract class FuenteDatosAbstracta {
  nuevo(LibroModelo model);
  borrar(Identity libroId);
  actualizar(LibroModelo libro);
  Future<List<LibroModelo>> buscarTodos();
  Future<LibroModelo> buscar(Identity libroId);
}
