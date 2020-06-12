import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:superappddd/aplicacion/casosuso/AddLibroCasoUso.dart';
import 'package:superappddd/aplicacion/limites/add_libro/AddLibroEntrada.dart';
import 'package:superappddd/dominio/entidades/Librero.dart';
import 'package:superappddd/dominio/entidades/Libro.dart';
import 'package:superappddd/dominio/factorias/EntidadFactoriaAbstracta.dart';
import 'package:superappddd/dominio/repositorios/LibreroRepositorioAbstracta.dart';
import 'package:superappddd/dominio/repositorios/LibroRepositorioAbstracta.dart';
import 'package:superappddd/dominio/value_objects/Autor.dart';
import 'package:superappddd/dominio/value_objects/FechaPublicacion.dart';
import 'package:superappddd/dominio/value_objects/ISBN.dart';
import 'package:superappddd/dominio/value_objects/Identity.dart';
import 'package:superappddd/dominio/value_objects/Titulo.dart';

class MockLibreroRepositorio extends Mock implements LibreroRepositorioAbstracta {}

class MockLibroRepositorio extends Mock implements LibroRepositorioAbstracta {}

class MockEntidadFactory extends Mock implements EntidadFactoriaAbstracta {}

void main() {
  AddLibroCasoUso sut;
  MockLibreroRepositorio mockLibreroRepositorio;
  MockLibroRepositorio mockLibroRepositorio;
  MockEntidadFactory mockEntidadFactory;

  setUp(() {
    mockLibroRepositorio = MockLibroRepositorio();
    mockLibreroRepositorio = MockLibreroRepositorio();
    mockEntidadFactory = MockEntidadFactory();

    sut = AddLibroCasoUso(
      libreroRepositorioAbstracta: mockLibreroRepositorio,
      libroRepositorioAbstracta: mockLibroRepositorio,
      entidadFactoriaAbstracta: mockEntidadFactory,
    );
  });

  group('AddLibroCasoUso', () {
    var titulo = Titulo.crear('Titulo del Libro').getOrElse(() => null);
    var autor = Autor.crear('Autor del Libro').getOrElse(() => null);
    var isbn = ISBN.crear('ISBN-10: 0-596-52068-9').getOrElse(() => null);
    var fechaPublicacion = FechaPublicacion.crear('2020-01-20').getOrElse(() => null);

    var entrada = AddLibroEntrada(
      libreroId: Identity.fromString('add'),
      titulo: titulo,
      autor: autor,
      isbn: isbn,
      fechaPublicacion: fechaPublicacion,
    );

    test('deberia retornar Fallido cuando Librero no exista', () async {
      //arrange
      when(mockLibreroRepositorio.buscar(entrada.libreroId)).thenAnswer((_) => null);

      //act
      var resultado = await sut.ejecutar(entrada);

      //assert
      expect(resultado.isLeft(), true);
    });

    test('deberia retornar el id del libro agregado exitosamente', () async {
      when(
        mockLibreroRepositorio.buscar(entrada.libreroId),
      ).thenAnswer(
        (_) => Librero(id: entrada.libreroId),
      );

      when(
        mockEntidadFactory.nuevoLibro(
          titulo: anyNamed('titulo'),
          autor: anyNamed('autor'),
          isbn: anyNamed('isbn'),
          fechaPublicacion: anyNamed('fechaPublicacion'),
        ),
      ).thenReturn(
        Libro(
          id: Identity.fromString('bb'),
          autor: entrada.autor,
          fechaPublicacion: entrada.fechaPublicacion,
          isbn: entrada.isbn,
          titulo: entrada.titulo,
        ),
      );

      //act
      var resultado = await sut.ejecutar(entrada);

      //assert
      expect(resultado.isRight(), true);
      expect(resultado.getOrElse(null).libroId, isNotNull);
      verify(mockLibroRepositorio.nuevo(any)).called(1); //Asegurarse que por lo menos el metodo fue llamado una vez
      verify(mockLibreroRepositorio.actualizar(any)).called(1);
    });
  });
}
