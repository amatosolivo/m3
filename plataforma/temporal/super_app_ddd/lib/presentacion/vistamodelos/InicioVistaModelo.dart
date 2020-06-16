import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';
import 'package:superappddd/aplicacion/constantes/generales.dart';
import 'package:superappddd/aplicacion/limites/crear_librero/CrearLibreoCasoUsoAbstracto.dart';
import 'package:superappddd/aplicacion/limites/todos_libros/LibroDTO.dart';
import 'package:superappddd/aplicacion/limites/todos_libros/TodosLosLibrosCasoUsoAbstracto.dart';
import 'package:superappddd/presentacion/modelos/Librero.dart';
import 'package:superappddd/presentacion/modelos/Libro.dart';

class InicioVistaModelo {
  List<Librero> _libreros = [];

  List<Librero> get libreros => _libreros;

  final CrearLibreroCasoUsoAbstracto _crearLibreroCasoUso;
  final TodosLosLibrosCasoUsoAbstracto _todosLosLibrosCasoUso;

  InicioVistaModelo({
    @required CrearLibreroCasoUsoAbstracto crearLibreroCasoUso,
    @required TodosLosLibrosCasoUsoAbstracto todosLosLibrosCasoUso,
  })  : _crearLibreroCasoUso = crearLibreroCasoUso,
        _todosLosLibrosCasoUso = todosLosLibrosCasoUso;

  Future<void> traerLibrosEnLibrero() async {
    var resultado = await _todosLosLibrosCasoUso.ejecutar();
    if (resultado.libros.isEmpty) {
      await crearLibrero();
      return;
    }

    var agruparPorLibreroId = groupBy(resultado.libros, (LibroDTO libro) => libro.libreroId);
    agruparPorLibreroId.forEach(
      (id, libros) => _crearLibreroConLibros(id.id, libros),
    );

    if (_libreros.last.libros.length == CAPACIDAD_LIBRERO) {
      await crearLibrero();
    }
  }

  _crearLibreroConLibros(String id, List<LibroDTO> libros) {
    Librero librero = Librero(id: id);
    librero.libros = libros
        .map(
          (l) => Libro(
            id: l.id.id,
            titulo: l.titulo.valor,
            autor: l.autor.valor,
            fechaPublicacion: l.fechaPublicacion.toString(),
          ),
        )
        .toList();

    _libreros.add(librero);
  }

  Future<void> crearLibrero() async {
    var resultado = await _crearLibreroCasoUso.ejecutar();
    _libreros.add(Librero(id: resultado.libreroId.id));
  }
}
