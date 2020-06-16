import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:superappddd/dominio/entidades/Libro.dart';
import 'package:superappddd/dominio/value_objects/Autor.dart';
import 'package:superappddd/dominio/value_objects/FechaPublicacion.dart';
import 'package:superappddd/dominio/value_objects/ISBN.dart';
import 'package:superappddd/dominio/value_objects/Identity.dart';
import 'package:superappddd/dominio/value_objects/Titulo.dart';
import 'package:superappddd/infraestructura/fuentesDatos/FuenteDatosAbstracta.dart';
import 'package:superappddd/infraestructura/repositorios/LibroRepositorio.dart';
import 'package:superappddd/modelos/LibroModelo.dart';

class MockFuenteDatos extends Mock implements FuenteDatosAbstracta {}

void main() {
  LibroRepositorio sut;
  MockFuenteDatos mockFuenteDatos;

  setUp(() {
    mockFuenteDatos = MockFuenteDatos();
    sut = LibroRepositorio(fuenteDatos: mockFuenteDatos);
  });

  group('LibroRepositorio.nuevo', () {
    var titulo = Titulo.crear('Diseño Orientado a Dominio').getOrElse(() => null);
    var autor = Autor.crear("Vaugh Vernon").getOrElse(() => null);
    var isbn = ISBN.crear("ISBN-10: 0-596-52068-9").getOrElse(() => null);
    var fechaPublicacion = FechaPublicacion.crear("2019-01-20").getOrElse(() => null);

    var libro = Libro(
      id: Identity.fromString('aaa'),
      titulo: titulo,
      autor: autor,
      isbn: isbn,
      fechaPublicacion: fechaPublicacion,
    );

    test('deberia ADICIONAR un libro cuando la llamada a la fuente de datos sea exitosa', () async {
      //act
      await sut.nuevo(libro);

      //assert
      verify(mockFuenteDatos.nuevo(any)).called(1);
    });
  });

  group('LibroRepositorio.buscarTodos', () {
    test('deberia retornar una LISTA DE LIBROS cuando la llamada a la fuenteDatos es exitosa', () async {
      var map = {
        "Libro_Id": "aaa",
        "Librero_Id": "bbb",
        "Titulo": "Titulo",
        "Autor": "Autor",
        "ISBN": "ISBN-10: 0-596-52068-9",
        "Fecha_Publicacion": "2019-01-20",
      };

      when(mockFuenteDatos.buscarTodos()).thenAnswer((_) async => [LibroModelo.fromMap(map)]);
      //act
      var libros = await sut.buscarTodos();

      //assert
      expect(libros, isNotEmpty);
      verify(mockFuenteDatos.buscarTodos()).called(1);
    });
  });

  group('LibroRepositorio.buscar', () {
    test('deberia retornar el libro BUSCADO cuando la llamada a la fuenteDatos es exitosa', () async {
      var map = {
        "Libro_Id": "aaa",
        "Librero_Id": "bbb",
        "Titulo": "Titulo",
        "Autor": "Autor",
        "ISBN": "ISBN-10: 0-596-52068-9",
        "Fecha_Publicacion": "2019-01-20",
      };

      when(mockFuenteDatos.buscar(any)).thenAnswer((_) async => LibroModelo.fromMap(map));
      //act
      var libro = await sut.buscar(libroId: Identity.fromString('aaa'));

      //assert
      expect(libro, isNotNull);
      verify(mockFuenteDatos.buscar(any)).called(1);
    });
  });

  group('LibroRepositorio.borrar', () {
    test('deberia verificar que la llamada a BORRAR se realizo a la fuenteDatos de forma exitosa', () async {
      await sut.borrar(libroId: Identity.fromString('aaa'));

      //assert
      verify(mockFuenteDatos.borrar(any)).called(1);
    });
  });

  group('LibroRepositorio.actualizar', () {
    test('deberia verificar que la llamada a ACTUALIZAR se realizo a la fuenteDatos de forma exitosa', () async {
      var map = {
        "Libro_Id": "aaa",
        "Librero_Id": "bbb",
        "Titulo": "Titulo",
        "Autor": "Autor",
        "ISBN": "ISBN-10: 0-596-52068-9",
        "Fecha_Publicacion": "2019-01-20",
      };

      when(mockFuenteDatos.actualizar(any)).thenAnswer((_) async => LibroModelo.fromMap(map));
      //act
      var libro = await sut.actualizar(LibroModelo.fromMap(map));

      //assert
      expect(libro, isNotNull);
      verify(mockFuenteDatos.actualizar(any)).called(1);
    });
  });
}
