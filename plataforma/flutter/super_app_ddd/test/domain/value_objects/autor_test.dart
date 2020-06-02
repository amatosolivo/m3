import 'package:flutter_test/flutter_test.dart';
import 'package:matcher/matcher.dart' as matcher;
import 'package:superappddd/domain/value_objects/Autor.dart';
import 'package:superappddd/domain/value_objects/Fallido.dart';

void main() {
  group('Autor', () {
    test('deberia retornar Fallido cuando el valor este vacio', () {
      var autor = Autor.crear('').fold((l) => l, (r) => r);
      expect(autor, matcher.TypeMatcher<Fallido>());
    });

    test('deberia crear Autor cuando el valor no es nulo', (){
      var str = 'Alexander Matos';
      var autor = Autor.crear(str).getOrElse(() => null);

      expect(autor.valor, str);
    });
  });
}