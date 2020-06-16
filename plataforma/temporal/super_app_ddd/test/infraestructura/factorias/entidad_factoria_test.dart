import 'package:flutter_test/flutter_test.dart';
import 'package:superappddd/dominio/value_objects/Autor.dart';
import 'package:superappddd/dominio/value_objects/FechaPublicacion.dart';
import 'package:superappddd/dominio/value_objects/ISBN.dart';
import 'package:superappddd/dominio/value_objects/Titulo.dart';
import 'package:superappddd/infraestructura/factorias/EntidadFactoria.dart';

void main() {
  EntidadFactoria sut;
  setUp(() {
    sut = EntidadFactoria();
  });

  group('description', () {
    test('deberia crear un libro desde el proveedor de inforamcion', () {
      var titulo = Titulo.crear('Diseño Orientado a Dominio').getOrElse(() => null);
      var autor = Autor.crear('Vaugh Vernon').getOrElse(() => null);
      var isbn = ISBN.crear('ISBN-10: 0-596-52068-9').getOrElse(() => null);
      var fechaPublicado = FechaPublicacion.crear('2019-01-20').getOrElse(() => null);

      //act
      var libro = sut.nuevoLibro(titulo: titulo, autor: autor, isbn: isbn, fechaPublicacion: fechaPublicado);

      //assert
      expect(libro.id, isNotNull);
      expect(libro.titulo, titulo);
    });
  });
}
