import 'package:flutter_test/flutter_test.dart';
import 'package:matcher/matcher.dart' as matcher;
import 'package:superappddd/dominio/value_objects/Fallido.dart';
import 'package:superappddd/dominio/value_objects/ISBN.dart';

void main() {
  group('ISBN', () {
    test('deberia retornar Fallido cuando el ISBN sea invalido', () {
      var isbn = ISBN.crear('89990').fold((err) => err, (isbn) => isbn);

      expect(isbn, matcher.TypeMatcher<Fallido>());
    });

    test('deberia retornar ISBN cuando sea un ISBN-10', () {
      var str = 'ISBN-10: 0-596-52068-9';
      var isbn = ISBN.crear(str).getOrElse(() => null);

      expect(isbn.valor, str);
    });

    test('deberia retornar ISBN cuando sea un ISBN-13', () {
      var str = 'ISBN-13: 978-0-596-52068-7';
      var isbn = ISBN.crear(str).getOrElse(() => null);

      expect(isbn.valor, str);
    });
  });
}
