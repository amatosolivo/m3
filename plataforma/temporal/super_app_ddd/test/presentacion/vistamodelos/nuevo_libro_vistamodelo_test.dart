import 'package:flutter_test/flutter_test.dart';
import 'package:matcher/matcher.dart' as matcher;
import 'package:superappddd/aplicacion/casosuso/CrearLibroCasoUso.dart';
import 'package:superappddd/infraestructura/factorias/EntidadFactoria.dart';
import 'package:superappddd/infraestructura/repositorios/falsos/LibreroRepositorioFalso.dart';
import 'package:superappddd/infraestructura/repositorios/falsos/LibroRepositorioFalso.dart';
import 'package:superappddd/presentacion/vistamodelos/NuevoLibroVistaModelo.dart';

void main() {
  NuevoLibroVistaModelo sut;
  CrearLibroCasoUso crearLibroCasoUso;
  LibroRepositorioFalso libroRepositorioFalso;
  LibreroRepositorioFalso libreroRepositorioFalso;
  EntidadFactoria entidadFactoria;

  setUp(() {
    libreroRepositorioFalso = LibreroRepositorioFalso();
    libroRepositorioFalso = LibroRepositorioFalso();
    entidadFactoria = EntidadFactoria();

    crearLibroCasoUso = CrearLibroCasoUso(
      entidadFactoriaAbstracta: entidadFactoria,
      libreroRepositorioAbstracta: libreroRepositorioFalso,
      libroRepositorioAbstracta: libroRepositorioFalso,
    );

    sut = NuevoLibroVistaModelo(crearLibroCasoUso);
  });

  group('NuevoLibroVistaModelo.nuevoLibro', () {
    String titulo = '';
    String autor = 'Jan Jensen';
    String isbn = 'ISBN-10: 0-596-52068-9';
    String fechaPublicacion = '2020-01-01';
    String libreroId = 'bbb';

    test('deberia arrojar una excepcion cuando hay errores en los parametros de entrada', () {
      expect(
        () => sut.nuevoLibro(titulo, autor, isbn, fechaPublicacion, libreroId),
        throwsA(matcher.TypeMatcher<Exception>()),
      );
    });

    test('deberia adicionar un libro de forma exitosa y retornar un id', () async {
      var uTitulo = 'Libro Rojo';

      await sut.nuevoLibro(uTitulo, autor, isbn, fechaPublicacion, libreroId);

      expect(sut.libro, isNotNull);
      expect(sut.libro.id, isNotNull);
    });
  });
}
