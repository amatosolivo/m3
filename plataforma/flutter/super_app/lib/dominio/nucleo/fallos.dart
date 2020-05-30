import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:superapp/dominio/nucleo/objetos_valor.dart';

part 'fallos.freezed.dart';

@freezed
abstract class ValorFallido<T> with _$ValorFallido<T> {
  const factory ValorFallido.correoInvalido({
    @required String valorFallido,
  }) = CorreoInvalido<T>;
  const factory ValorFallido.claveMuyCorta({
    @required String valorFallido,
  }) = ClaveMuyCorta<T>;
}

class DireccionCorreoInvalida {
  final String valorFallido;
  DireccionCorreoInvalida({@required this.valorFallido});
}
