import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:superappddd/domain/value_objects/Fallido.dart';

class Autor extends Equatable {
  final String valor;

  Autor._(this.valor);

  static Either<Fallido, Autor> crear(String valor) {
    if (valor == null || valor.isEmpty) {
      return Left(Fallido('autor no puede ser nulo o vacio'));
    } else {
      return Right(Autor._(valor));
    }
  }

  @override
  List<Object> get props => [valor];
}