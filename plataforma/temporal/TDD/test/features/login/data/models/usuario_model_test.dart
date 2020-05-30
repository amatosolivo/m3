import 'package:flutter_test/flutter_test.dart';
import 'package:superapp/features/login/data/models/usuario_model.dart';
import 'package:superapp/features/login/domain/entities/usuario.dart';

void main() {
  final tUsuarioModel = UsuarioModel(correo: 'alex@email.com', clave: '123456');

  test('Deberia ser una subclase de Usuario entity', () async {
    // assert
    expect(tUsuarioModel, isA<Usuario>());
  });
}
