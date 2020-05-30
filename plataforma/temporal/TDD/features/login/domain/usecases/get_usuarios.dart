import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:superapp/core/error/failures.dart';
import 'package:superapp/core/usecases/usecase.dart';
import 'package:superapp/features/login/domain/entities/usuario.dart';
import 'package:superapp/features/login/domain/repositories/usuario_repository.dart';

class GetUsuarios implements UseCase<List<Usuario>, NoParams> {
  final UsuarioRepository repository;
  GetUsuarios(this.repository);

  @override
  Future<Either<Failure, List<Usuario>>> call(NoParams params) async {
    return await repository.getUsuarios();
  }
}

class NoParams extends Equatable {}
