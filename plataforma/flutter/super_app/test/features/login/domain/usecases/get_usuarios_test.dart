import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:superapp/features/login/domain/entities/usuario.dart';
import 'package:superapp/features/login/domain/repositories/usuario_repository.dart';
import 'package:superapp/features/login/domain/usecases/get_usuarios.dart';

class MockUsuarioRepository extends Mock implements UsuarioRepository {}

void main() {
  GetUsuarios usecase;
  MockUsuarioRepository mockUsuarioRepository;

  setUp(() {
    mockUsuarioRepository = MockUsuarioRepository();
    usecase = GetUsuarios(mockUsuarioRepository);
  });

  final List<Usuario> tUsuarios = [Usuario(clave: '123456', correo: 'alex@email.com'), Usuario(clave: '123456', correo: 'miguel@email.com')];

  test(
    'Deberia obtener todos los usuarios',
    () async {
      // arrange
      when(mockUsuarioRepository.getUsuarios()).thenAnswer((realInvocation) async => Right(tUsuarios));
      // act
      final result = await usecase(NoParams());
      // assert
      expect(result, Right(tUsuarios));
      verify(mockUsuarioRepository.getUsuarios());
      verifyNoMoreInteractions(mockUsuarioRepository);
    },
  );
}
