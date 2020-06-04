import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:intl/intl.dart';
import 'package:superappddd/domain/value_objects/Fallido.dart';

class FechaPublicacion extends Equatable {
  final String _valor;

  FechaPublicacion._(this._valor);

  static Either<Fallido, FechaPublicacion> crear(String valor) {
    final formateador = DateFormat('yyyy-MM-dd');
    try {
      formateador.parseStrict(valor);
    } catch (e) {
      return Left(Fallido('formato de fecha incorrecto [yyyy-MM-dd'));
    }
    return Right(FechaPublicacion._(valor));
  }

  DateTime toDate() => DateTime.parse(_valor);

  @override
  List<Object> get props => [_valor];
}