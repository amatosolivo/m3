import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:superapp/features/login/domain/entities/usuario.dart';
import 'package:superapp/features/login/domain/repositories/usuario_repository.dart';
import 'package:superapp/features/login/domain/usecases/get_usuario.dart';

class MockUsuarioRepository extends Mock implements UsuarioRepository {}

void main() {
  GetUsuario usecase;
  MockUsuarioRepository mockUsuarioRepository;

  setUp(() {
    mockUsuarioRepository = MockUsuarioRepository();
    usecase = GetUsuario(mockUsuarioRepository);
  });

  final tCorreo = 'alex@email.com';
  final tClave = '123456';
  final tUsuario = Usuario(clave: '123456', correo: 'alex@email.com');

  test(
    'Deberia obtener el usuario a partir del correo y la clave',
    () async {
      // arrange
      when(mockUsuarioRepository.getUsuario(any, any)).thenAnswer((realInvocation) async => Right(tUsuario));
      // act
      final result = await usecase.execute(correo: tCorreo, clave: tClave);
      // assert
      expect(result, Right(tUsuario));
      verify(mockUsuarioRepository.getUsuario(tCorreo, tClave));
      verifyNoMoreInteractions(mockUsuarioRepository);
    },
  );
}
