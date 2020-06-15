import 'dart:collection';

import 'package:superappddd/aplicacion/limites/todos_libros/LibroDTO.dart';
import 'package:superappddd/aplicacion/limites/todos_libros/TodosLosLibrosCasoUsoAbstracto.dart';
import 'package:superappddd/aplicacion/limites/todos_libros/TodosLosLibrosSalida.dart';
import 'package:superappddd/dominio/repositorios/LibroRepositorioAbstracta.dart';

class TodosLosLibrosCasoUso implements TodosLosLibrosCasoUsoAbstracto {
  final LibroRepositorioAbstracta _libroRepositorio;

  TodosLosLibrosCasoUso({LibroRepositorioAbstracta libroRepositorio}) : _libroRepositorio = libroRepositorio;

  @override
  Future<TodosLosLibrosSalida> ejecutar() async {
    var libros = await _libroRepositorio.buscarTodos();

    List<LibroDTO> salida = libros.map((libro) => LibroDTO.fromEntity(libro)).toList();

    return TodosLosLibrosSalida(libros: UnmodifiableListView(salida));
  }
}
