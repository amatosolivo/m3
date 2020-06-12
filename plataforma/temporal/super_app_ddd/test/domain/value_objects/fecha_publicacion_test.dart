import 'package:flutter_test/flutter_test.dart';
import 'package:matcher/matcher.dart' as matcher;
import 'package:superappddd/dominio/value_objects/Fallido.dart';
import 'package:superappddd/dominio/value_objects/FechaPublicacion.dart';

void main() {
  group('FechaPublicacion', () {
    test('deberia retornar fallido cuando la fecha no este formateada correctamente', () {
      var fecha = FechaPublicacion.crear('2019.01.20').fold((l) => l, (r) => r);
      expect(fecha, matcher.TypeMatcher<Fallido>());
    });

    test('deberia fijar la fecha cuando sea valida', () {
      var strFecha = '2019-01-20';
      var fecha = FechaPublicacion.crear(strFecha).getOrElse(() => null);

      expect(fecha.toDate(), DateTime(2019, 01, 20));
    });
  });
}
