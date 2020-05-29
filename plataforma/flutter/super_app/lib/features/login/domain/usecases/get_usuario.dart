import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:superapp/core/error/failures.dart';
import 'package:superapp/features/login/domain/entities/usuario.dart';
import 'package:superapp/features/login/domain/repositories/usuario_repository.dart';

class GetUsuario {
  final UsuarioRepository repository;

  GetUsuario(this.repository);

  Future<Either<Failure, Usuario>> execute({@required String correo, @required String clave}) async {
    return await repository.getUsuario(correo, clave);
  }
}
