import 'package:flutter_test/flutter_test.dart';
import 'package:superappddd/aplicacion/casosuso/CrearLibreroCasoUso.dart';
import 'package:superappddd/aplicacion/casosuso/TodosLosLibrosCasoUso.dart';
import 'package:superappddd/infraestructura/factorias/EntidadFactoria.dart';
import 'package:superappddd/infraestructura/repositorios/falsos/LibreroRepositorioFalso.dart';
import 'package:superappddd/infraestructura/repositorios/falsos/LibroRepositorioFalso.dart';
import 'package:superappddd/presentacion/vistamodelos/InicioVistaModelo.dart';

void main() {
  InicioVistaModelo sut;
  CrearLibreroCasoUso crearLibreroCasoUso;
  TodosLosLibrosCasoUso todosLosLibrosCasoUso;
  LibroRepositorioFalso libroRepositorioFalso;
  LibreroRepositorioFalso libreroRepositorioFalso;
  EntidadFactoria entidadFactoria;

  setUp(() {
    entidadFactoria = EntidadFactoria();
    libreroRepositorioFalso = LibreroRepositorioFalso();
    libroRepositorioFalso = LibroRepositorioFalso();

    todosLosLibrosCasoUso = TodosLosLibrosCasoUso(libroRepositorio: libroRepositorioFalso);
    crearLibreroCasoUso = CrearLibreroCasoUso(libreroRepositorioFalso, entidadFactoria);

    sut = InicioVistaModelo(
      crearLibreroCasoUso: crearLibreroCasoUso,
      todosLosLibrosCasoUso: todosLosLibrosCasoUso,
    );
  });

  group('InicioVistaModelo.traerLibrosEnLibrero', () {
    test('deberia crear un librero vacio cuando no halla ningun libro guardado', () async {
      //arrange
      libroRepositorioFalso.libros = [];
      //act
      await sut.traerLibrosEnLibrero();
      //assert
      expect(sut.libreros.length, 1);
      expect(sut.libreros.first.libros, isEmpty);
    });

    test('deberia retornar los libros almacenados y agruparlos por librero', () async {
      //act
      await sut.traerLibrosEnLibrero();
      //assert
      expect(sut.libreros, isNotEmpty);
      expect(sut.libreros.first.libros, isNotEmpty);
    });
  });
}
