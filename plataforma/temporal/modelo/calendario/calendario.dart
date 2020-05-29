import 'package:superapp/constantes/enumeradores.dart';
import 'package:superapp/modelo/entidad.dart';

class Calendario extends Entidad {
  String nombre, descripcion;
  Estado estado;
  DateTime fecha;
  bool festivo;
}
