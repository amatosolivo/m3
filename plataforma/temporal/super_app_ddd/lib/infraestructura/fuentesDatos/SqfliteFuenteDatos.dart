import 'package:flutter/foundation.dart';
import 'package:sqflite/sqflite.dart';
import 'package:superappddd/dominio/value_objects/Identity.dart';
import 'package:superappddd/infraestructura/fuentesDatos/FuenteDatosAbstracta.dart';
import 'package:superappddd/modelos/LibroModelo.dart';

class SqfliteFuenteDatos implements FuenteDatosAbstracta {
  final Database _db;
  const SqfliteFuenteDatos({@required Database db}) : _db = db;

  @override
  void actualizar(LibroModelo libro) {
    _db.update('libros', libro.toMap(), conflictAlgorithm: ConflictAlgorithm.replace);
  }

  @override
  void borrar(Identity libroId) {
    _db.delete('libros', where: 'Libro_Id = ?', whereArgs: [libroId]);
  }

  @override
  Future<LibroModelo> buscar(Identity libroId) async {
    var listaDeMapas = await _db.query('libros', where: 'Libro_Id = ?', whereArgs: [libroId.id]);
    return LibroModelo.fromMap(listaDeMapas.first);
  }

  @override
  Future<List<LibroModelo>> buscarTodos() async {
    var listaDeMapas = await _db.query('libros');
    if (listaDeMapas.isEmpty) return [];

    return listaDeMapas.map<LibroModelo>((map) => LibroModelo.fromMap(map)).toList();
  }

  @override
  void nuevo(LibroModelo model) async {
    await _db.insert(
      'libros',
      model.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }
}
