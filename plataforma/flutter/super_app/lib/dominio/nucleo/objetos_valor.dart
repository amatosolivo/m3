import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:superapp/dominio/nucleo/fallos.dart';

@immutable
abstract class ObjetoValor<T> {
  const ObjetoValor();
  Either<ValorFallido<T>, T> get valor;

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is ObjetoValor<T> && o.valor == valor;
  }

  @override
  int get hashCode => valor.hashCode;

  @override
  String toString() => 'Valor($valor)';
}
