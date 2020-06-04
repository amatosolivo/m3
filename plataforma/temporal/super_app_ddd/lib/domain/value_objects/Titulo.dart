import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:superappddd/domain/value_objects/Fallido.dart';

class Titulo extends Equatable {
  final String valor;

  Titulo._(this.valor);

  static Either<Fallido, Titulo> crear(String valor) {
    if (valor == null || valor.isEmpty ) {
      return Left(Fallido('El titulo no puede ser nulo o vacio'));
    } else {
      return Right(Titulo._(valor));
    }
  }

  @override
  List<Object> get props => [valor];
}