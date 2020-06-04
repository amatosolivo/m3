import 'package:flutter_test/flutter_test.dart';
import 'package:superappddd/domain/ExcepcionesDeDominio.dart';
import 'package:superappddd/domain/entidades/Librero.dart';
import 'package:superappddd/domain/entidades/Libro.dart';
import 'package:superappddd/domain/value_objects/Identity.dart';
import 'package:matcher/matcher.dart' as matcher;
void main() {
  Librero sut;

  setUp((){
    sut = Librero(id: Identity.fromString('aaa'));
  });

  group('Librero', (){
    test('addLibro deberia devolver una ExcepcionDeDominio cuando el librero sobrepase su capacidad', (){
      var libros = List.generate(10, (index) => Libro()).toList();
      for (var item in libros) {
        sut.addLibro(item);
      }

      expect(() => sut.addLibro(Libro()), throwsA(matcher.TypeMatcher<ExcepcionesDeDominio>()));
    });

    test('addLibro deberia adicionar un libro', (){
      var libro = Libro();
      sut.addLibro(libro);
      expect(sut.libros.length, 1);
    });
    
  });
}