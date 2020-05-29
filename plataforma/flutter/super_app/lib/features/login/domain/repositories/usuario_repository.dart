import 'package:dartz/dartz.dart';
import 'package:superapp/core/error/failures.dart';
import 'package:superapp/features/login/domain/entities/usuario.dart';

abstract class UsuarioRepository {
  Future<Either<Failure, Usuario>> getUsuario(String correo, String clave);
  Future<Either<Failure, List<Usuario>>> getUsuarios();
}
