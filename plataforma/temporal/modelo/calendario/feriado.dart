import 'package:superapp/modelo/calendario/calendario.dart';
import 'package:superapp/modelo/calendario/conmemoracion.dart';
import 'package:superapp/modelo/calendario/dia.dart';
import 'package:superapp/modelo/entidad.dart';

class Feriado extends Entidad {
  // Calendario pre-registrado que especifica el rango de fechas para el que el feriado es valido
  Calendario calendario;

  // Fechas pre-definidas del feriado y el ajuste que realiza el gobierno para cambiar el dia
  DateTime fechaOriginal, fechaAjustada;

  // Dia pre-definido del feriado segun la fechaOriginal y diaAjuste segun la fechaAjustada si aplica
  Dia diaOriginal, diaAjuste;

  // Descripcion de la razon del feriado
  Conmemoracion conmemoracion;

  // Indica si no sera el dia original sino el ajustado
  bool cambiado;
}
