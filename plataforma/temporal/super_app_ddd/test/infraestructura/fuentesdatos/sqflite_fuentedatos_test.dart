import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:sqflite/sqflite.dart';
import 'package:superappddd/dominio/value_objects/Identity.dart';
import 'package:superappddd/infraestructura/fuentesDatos/SqfliteFuenteDatos.dart';
import 'package:superappddd/modelos/LibroModelo.dart';

class MockSqfliteBaseDatos extends Mock implements Database {}

void main() {
  SqfliteFuenteDatos sut;
  MockSqfliteBaseDatos database;

  setUp(() {
    database = MockSqfliteBaseDatos();
    sut = SqfliteFuenteDatos(db: database);
  });

  var map = {
    'Libro_Id': 'aaa',
    'Librero_Id': 'bbb',
    'Titulo': 'Titulo',
    'Autor': 'Autor',
    'ISBN': 'ISBN-10: 0-596-52068-9',
    'Fecha_Publicacion': '2020-01-20',
  };

  group('SqfliteFuenteDatos.nuevoLibro', () {
    test('deberia poder realizar una insercion en la base de datos', () async {
      //arrange
      var libroModelo = LibroModelo.fromMap(map);
      when(
        database.insert('libros', libroModelo.toMap(), conflictAlgorithm: ConflictAlgorithm.replace),
      ).thenAnswer(
        (_) async => 1,
      );

      //act
      await sut.nuevo(libroModelo);

      //assert
      verify(
        database.insert('libros', libroModelo.toMap(), conflictAlgorithm: ConflictAlgorithm.replace),
      ).called(1);
    });
  });

  group('SqfliteFuenteDatos.buscarLibro', () {
    test('deberia poder realizar una consulta a la base de datos y retornar el registro exacto', () async {
      //arrange

      when(database.query('libros', where: anyNamed('where'), whereArgs: anyNamed('whereArgs'))).thenAnswer((_) async => [map]);

      //act
      var libroModelo = await sut.buscar(Identity.fromString('aaa'));

      //assert
      expect(libroModelo, isNotNull);
      expect(libroModelo.id.id, 'aaa');
    });
  });

  group('SqfliteFuenteDatos.buscarTodosLosLibros', () {
    test('deberia poder retornar todos los libros en la base de datos', () async {
      //arrange
      when(database.query('libros')).thenAnswer((_) async => [map]);

      //act
      var libroModelos = await sut.buscarTodos();

      //assert
      expect(libroModelos, isNotEmpty);
      verify(database.query('libros'));
    });
  });
}
