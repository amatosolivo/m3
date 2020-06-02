import 'package:flutter_test/flutter_test.dart';
import 'package:matcher/matcher.dart' as matcher;
import 'package:superappddd/domain/value_objects/Fallido.dart';
import 'package:superappddd/domain/value_objects/Titulo.dart';

void main() {
  group('Titulo', () {
    test('deberia retornar Fallido cuando el valor esta vacio', () {
      var titulo = Titulo.crear('').fold((l) => l, (r) => r);
      expect(titulo, matcher.TypeMatcher<Fallido>());
    });

    test('deberia crear Titulo cuando el valor no es nulo', (){
      var str = 'Probando 123';
      var titulo = Titulo.crear(str).getOrElse(() => null);

      expect(titulo.valor, str);
    });
  });
}