import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:superapp/core/error/failures.dart';
import 'package:superapp/core/usecases/usecase.dart';
import 'package:superapp/features/login/domain/entities/usuario.dart';
import 'package:superapp/features/login/domain/repositories/usuario_repository.dart';

class GetUsuario implements UseCase<Usuario, Params> {
  final UsuarioRepository repository;
  GetUsuario(this.repository);

  @override
  Future<Either<Failure, Usuario>> call(Params params) async {
    return await repository.getUsuario(params.correo, params.clave);
  }
}

class Params extends Equatable {
  final String correo;
  final String clave;

  Params({@required this.clave, @required this.correo}) : super([correo, clave]);
}
