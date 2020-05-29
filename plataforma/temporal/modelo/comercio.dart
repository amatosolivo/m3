import 'package:superapp/constantes/enumeradores.dart';
import 'package:superapp/modelo/calendario/dia.dart';
import 'package:superapp/modelo/calendario/tanda.dart';
import 'package:superapp/modelo/entidad.dart';

class Comercio extends Entidad {
  String nombre, direccion, telefono, email, website;
  Tanda tandaLaboral;
  TipoComercio tipoComercio;
  List<Dia> diasLaborables;
  List<Dia> diasOfertas;
  List<Dia> diasDegustacion;
  int rating, noCajasNormales, noCajasExpreso;
}
