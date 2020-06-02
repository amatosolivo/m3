import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:superappddd/domain/value_objects/Fallido.dart';

class ISBN extends Equatable {
  final String valor;
  
  ISBN._(this.valor);

  static Either<Fallido, ISBN> crear(String valor) {
    if (!_esValido(valor)) {
      return Left(Fallido('ISBN invalido'));
    } else {
      return Right(ISBN._(valor));
    }
  }

  static bool _esValido(String valor) {
    var regex =
        r'^(?:ISBN(?:-1[03])?:? )?(?=[0-9X]{10}$|(?=(?:[0-9]+[- ]){3})[- 0-9X]{13}$|97[89][0-9]{10}$|(?=(?:[0-9]+[- ]){4})[- 0-9]{17}$)(?:97[89][- ]?)?[0-9]{1,5}[- ]?[0-9]+[- ]?[0-9]+[- ]?[0-9X]$';

    RegExp expresion = RegExp(regex);
    return expresion.hasMatch(valor);
  }

  @override
  List<Object> get props => [valor];
}