import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

class Usuario extends Equatable {
  final String correo;
  final String clave;

  Usuario({@required this.clave, @required this.correo}) : super([correo, clave]);
}
