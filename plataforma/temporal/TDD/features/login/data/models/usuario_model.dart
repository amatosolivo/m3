import 'package:flutter/foundation.dart';
import 'package:superapp/features/login/domain/entities/usuario.dart';

class UsuarioModel extends Usuario {
  UsuarioModel({
    @required String correo,
    @required String clave,
  }) : super(correo: correo, clave: clave);
}
