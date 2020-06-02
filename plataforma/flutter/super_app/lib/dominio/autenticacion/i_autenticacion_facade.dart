import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:superapp/dominio/autenticacion/fallo_autenticacion.dart';
import 'package:superapp/dominio/autenticacion/objetos_valor.dart';

// Firebaseauth, Googlesignin

abstract class IAutenticacionFacade {
  Future<Either<FalloAutentiacion, Unit>> registroConCorreoyClave({
    @required DireccionCorreo direccionCorreo,
    @required Clave clave,
  });

  Future<Either<FalloAutentiacion, Unit>> accederConCorreoyClave({
    @required DireccionCorreo direccionCorreo,
    @required Clave clave,
  });

  Future<Either<FalloAutentiacion, Unit>> accederConGoogle();
  Future<Either<FalloAutentiacion, Unit>> accederTwitter();
  Future<Either<FalloAutentiacion, Unit>> accederInstagram();
  Future<Either<FalloAutentiacion, Unit>> accederFacebook();
}
